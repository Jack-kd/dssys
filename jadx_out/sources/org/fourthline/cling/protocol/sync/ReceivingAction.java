package org.fourthline.cling.protocol.sync;

import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.UnsupportedDataException;
import org.fourthline.cling.model.action.ActionCancelledException;
import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.action.RemoteActionInvocation;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.message.control.IncomingActionRequestMessage;
import org.fourthline.cling.model.message.control.OutgoingActionResponseMessage;
import org.fourthline.cling.model.message.header.ContentTypeHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.resource.ServiceControlResource;
import org.fourthline.cling.model.types.ErrorCode;
import org.fourthline.cling.protocol.ReceivingSync;
import org.fourthline.cling.transport.RouterException;
import org.seamless.util.Exceptions;

/* loaded from: classes5.dex */
public class ReceivingAction extends ReceivingSync<StreamRequestMessage, StreamResponseMessage> {
    private static final Logger log = Logger.getLogger(ReceivingAction.class.getName());

    public ReceivingAction(UpnpService upnpService, StreamRequestMessage streamRequestMessage) {
        super(upnpService, streamRequestMessage);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.fourthline.cling.protocol.ReceivingSync
    public StreamResponseMessage executeSync() throws RouterException {
        RemoteActionInvocation remoteActionInvocation;
        OutgoingActionResponseMessage outgoingActionResponseMessage;
        ContentTypeHeader contentTypeHeader = (ContentTypeHeader) ((StreamRequestMessage) getInputMessage()).getHeaders().getFirstHeader(UpnpHeader.Type.CONTENT_TYPE, ContentTypeHeader.class);
        if (contentTypeHeader != null && !contentTypeHeader.isUDACompliantXML()) {
            log.warning("Received invalid Content-Type '" + contentTypeHeader + "': " + getInputMessage());
            return new StreamResponseMessage(new UpnpResponse(UpnpResponse.Status.UNSUPPORTED_MEDIA_TYPE));
        }
        if (contentTypeHeader == null) {
            log.warning("Received without Content-Type: " + getInputMessage());
        }
        ServiceControlResource serviceControlResource = (ServiceControlResource) getUpnpService().getRegistry().getResource(ServiceControlResource.class, ((StreamRequestMessage) getInputMessage()).getUri());
        if (serviceControlResource == null) {
            log.fine("No local resource found: " + getInputMessage());
            return null;
        }
        Logger logger = log;
        logger.fine("Found local action resource matching relative request URI: " + ((StreamRequestMessage) getInputMessage()).getUri());
        try {
            IncomingActionRequestMessage incomingActionRequestMessage = new IncomingActionRequestMessage((StreamRequestMessage) getInputMessage(), serviceControlResource.getModel());
            logger.finer("Created incoming action request message: " + incomingActionRequestMessage);
            remoteActionInvocation = new RemoteActionInvocation(incomingActionRequestMessage.getAction(), getRemoteClientInfo());
            logger.fine("Reading body of request message");
            getUpnpService().getConfiguration().getSoapActionProcessor().readBody(incomingActionRequestMessage, remoteActionInvocation);
            logger.fine("Executing on local service: " + remoteActionInvocation);
            serviceControlResource.getModel().getExecutor(remoteActionInvocation.getAction()).execute(remoteActionInvocation);
            if (remoteActionInvocation.getFailure() == null) {
                outgoingActionResponseMessage = new OutgoingActionResponseMessage(remoteActionInvocation.getAction());
            } else {
                if (remoteActionInvocation.getFailure() instanceof ActionCancelledException) {
                    logger.fine("Action execution was cancelled, returning 404 to client");
                    return null;
                }
                outgoingActionResponseMessage = new OutgoingActionResponseMessage(UpnpResponse.Status.INTERNAL_SERVER_ERROR, remoteActionInvocation.getAction());
            }
        } catch (UnsupportedDataException e2) {
            log.log(Level.WARNING, "Error reading action request XML body: " + e2.toString(), Exceptions.unwrap(e2));
            remoteActionInvocation = new RemoteActionInvocation(Exceptions.unwrap(e2) instanceof ActionException ? (ActionException) Exceptions.unwrap(e2) : new ActionException(ErrorCode.ACTION_FAILED, e2.getMessage()), getRemoteClientInfo());
            outgoingActionResponseMessage = new OutgoingActionResponseMessage(UpnpResponse.Status.INTERNAL_SERVER_ERROR);
        } catch (ActionException e3) {
            log.finer("Error executing local action: " + e3);
            remoteActionInvocation = new RemoteActionInvocation(e3, getRemoteClientInfo());
            outgoingActionResponseMessage = new OutgoingActionResponseMessage(UpnpResponse.Status.INTERNAL_SERVER_ERROR);
        }
        try {
            Logger logger2 = log;
            logger2.fine("Writing body of response message");
            getUpnpService().getConfiguration().getSoapActionProcessor().writeBody(outgoingActionResponseMessage, remoteActionInvocation);
            logger2.fine("Returning finished response message: " + outgoingActionResponseMessage);
            return outgoingActionResponseMessage;
        } catch (UnsupportedDataException e4) {
            Logger logger3 = log;
            logger3.warning("Failure writing body of response message, sending '500 Internal Server Error' without body");
            logger3.log(Level.WARNING, "Exception root cause: ", Exceptions.unwrap(e4));
            return new StreamResponseMessage(UpnpResponse.Status.INTERNAL_SERVER_ERROR);
        }
    }
}
