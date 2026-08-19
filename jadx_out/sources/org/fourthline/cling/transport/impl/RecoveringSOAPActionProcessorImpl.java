package org.fourthline.cling.transport.impl;

import java.util.logging.Logger;
import javax.enterprise.inject.Alternative;
import org.fourthline.cling.model.UnsupportedDataException;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.message.control.ActionRequestMessage;
import org.fourthline.cling.model.message.control.ActionResponseMessage;
import org.fourthline.cling.transport.spi.SOAPActionProcessor;
import org.seamless.xml.XmlPullParserUtils;

@Alternative
/* loaded from: classes5.dex */
public class RecoveringSOAPActionProcessorImpl extends PullSOAPActionProcessorImpl {
    private static Logger log = Logger.getLogger(SOAPActionProcessor.class.getName());

    @Override // org.fourthline.cling.transport.impl.PullSOAPActionProcessorImpl, org.fourthline.cling.transport.impl.SOAPActionProcessorImpl, org.fourthline.cling.transport.spi.SOAPActionProcessor
    public void readBody(ActionRequestMessage actionRequestMessage, ActionInvocation actionInvocation) throws UnsupportedDataException {
        try {
            super.readBody(actionRequestMessage, actionInvocation);
        } catch (UnsupportedDataException e2) {
            if (!actionRequestMessage.isBodyNonEmptyString()) {
                throw e2;
            }
            log.warning("Trying to recover from invalid SOAP XML request: " + e2);
            try {
                actionRequestMessage.setBody(XmlPullParserUtils.fixXMLEntities(getMessageBody(actionRequestMessage)));
                super.readBody(actionRequestMessage, actionInvocation);
            } catch (UnsupportedDataException e3) {
                handleInvalidMessage(actionInvocation, e2, e3);
            }
        }
    }

    @Override // org.fourthline.cling.transport.impl.PullSOAPActionProcessorImpl, org.fourthline.cling.transport.impl.SOAPActionProcessorImpl, org.fourthline.cling.transport.spi.SOAPActionProcessor
    public void readBody(ActionResponseMessage actionResponseMessage, ActionInvocation actionInvocation) throws UnsupportedDataException {
        try {
            super.readBody(actionResponseMessage, actionInvocation);
        } catch (UnsupportedDataException e2) {
            if (actionResponseMessage.isBodyNonEmptyString()) {
                log.warning("Trying to recover from invalid SOAP XML response: " + e2);
                String strFixXMLEntities = XmlPullParserUtils.fixXMLEntities(getMessageBody(actionResponseMessage));
                if (strFixXMLEntities.endsWith("</s:Envelop")) {
                    strFixXMLEntities = strFixXMLEntities + "e>";
                }
                try {
                    actionResponseMessage.setBody(strFixXMLEntities);
                    super.readBody(actionResponseMessage, actionInvocation);
                    return;
                } catch (UnsupportedDataException e3) {
                    handleInvalidMessage(actionInvocation, e2, e3);
                    return;
                }
            }
            throw e2;
        }
    }

    public void handleInvalidMessage(ActionInvocation actionInvocation, UnsupportedDataException unsupportedDataException, UnsupportedDataException unsupportedDataException2) throws UnsupportedDataException {
        throw unsupportedDataException;
    }
}
