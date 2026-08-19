package org.fourthline.cling.transport.impl;

import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
import java.net.DatagramPacket;
import java.net.InetAddress;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.model.UnsupportedDataException;
import org.fourthline.cling.model.message.IncomingDatagramMessage;
import org.fourthline.cling.model.message.OutgoingDatagramMessage;
import org.fourthline.cling.model.message.UpnpHeaders;
import org.fourthline.cling.model.message.UpnpRequest;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.transport.spi.DatagramProcessor;

/* loaded from: classes5.dex */
public class DatagramProcessorImpl implements DatagramProcessor {
    private static Logger log = Logger.getLogger(DatagramProcessor.class.getName());

    /* JADX WARN: Removed duplicated region for block: B:11:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006e  */
    @Override // org.fourthline.cling.transport.spi.DatagramProcessor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.fourthline.cling.model.message.IncomingDatagramMessage read(java.net.InetAddress r9, java.net.DatagramPacket r10) throws org.fourthline.cling.model.UnsupportedDataException {
        /*
            r8 = this;
            java.util.logging.Logger r0 = org.fourthline.cling.transport.impl.DatagramProcessorImpl.log     // Catch: java.lang.Exception -> L81
            java.util.logging.Level r1 = java.util.logging.Level.FINER     // Catch: java.lang.Exception -> L81
            boolean r0 = r0.isLoggable(r1)     // Catch: java.lang.Exception -> L81
            if (r0 == 0) goto L2e
            java.util.logging.Logger r0 = org.fourthline.cling.transport.impl.DatagramProcessorImpl.log     // Catch: java.lang.Exception -> L29
            java.lang.String r1 = "===================================== DATAGRAM BEGIN ============================================"
            r0.finer(r1)     // Catch: java.lang.Exception -> L29
            java.util.logging.Logger r0 = org.fourthline.cling.transport.impl.DatagramProcessorImpl.log     // Catch: java.lang.Exception -> L29
            java.lang.String r1 = new java.lang.String     // Catch: java.lang.Exception -> L29
            byte[] r2 = r10.getData()     // Catch: java.lang.Exception -> L29
            java.lang.String r3 = "UTF-8"
            r1.<init>(r2, r3)     // Catch: java.lang.Exception -> L29
            r0.finer(r1)     // Catch: java.lang.Exception -> L29
            java.util.logging.Logger r0 = org.fourthline.cling.transport.impl.DatagramProcessorImpl.log     // Catch: java.lang.Exception -> L29
            java.lang.String r1 = "-===================================== DATAGRAM END ============================================="
            r0.finer(r1)     // Catch: java.lang.Exception -> L29
            goto L2e
        L29:
            r0 = move-exception
            r9 = r0
            r3 = r10
            goto L84
        L2e:
            java.io.ByteArrayInputStream r4 = new java.io.ByteArrayInputStream     // Catch: java.lang.Exception -> L81
            byte[] r0 = r10.getData()     // Catch: java.lang.Exception -> L81
            r4.<init>(r0)     // Catch: java.lang.Exception -> L81
            java.lang.String r0 = org.seamless.http.Headers.readLine(r4)     // Catch: java.lang.Exception -> L81
            java.lang.String r1 = " "
            java.lang.String[] r0 = r0.split(r1)     // Catch: java.lang.Exception -> L81
            r1 = 0
            r2 = r0[r1]     // Catch: java.lang.Exception -> L81
            java.lang.String r3 = "HTTP/1."
            boolean r2 = r2.startsWith(r3)     // Catch: java.lang.Exception -> L81
            r3 = 2
            if (r2 == 0) goto L6e
            r2 = 1
            r2 = r0[r2]     // Catch: java.lang.Exception -> L69
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Exception -> L69
            int r5 = r2.intValue()     // Catch: java.lang.Exception -> L69
            r6 = r0[r3]     // Catch: java.lang.Exception -> L69
            r7 = r0[r1]     // Catch: java.lang.Exception -> L69
            r1 = r8
            r2 = r9
            r3 = r10
            org.fourthline.cling.model.message.IncomingDatagramMessage r9 = r1.readResponseMessage(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Exception -> L64
            return r9
        L64:
            r0 = move-exception
            r9 = r3
            r10 = r0
        L67:
            r9 = r10
            goto L84
        L69:
            r0 = move-exception
            r9 = r10
            r10 = r0
            r3 = r9
            goto L67
        L6e:
            r2 = r9
            r9 = r10
            r5 = r0[r1]     // Catch: java.lang.Exception -> L7e
            r6 = r0[r3]     // Catch: java.lang.Exception -> L7e
            r1 = r8
            r3 = r9
            org.fourthline.cling.model.message.IncomingDatagramMessage r9 = r1.readRequestMessage(r2, r3, r4, r5, r6)     // Catch: java.lang.Exception -> L7b
            return r9
        L7b:
            r0 = move-exception
        L7c:
            r9 = r0
            goto L84
        L7e:
            r0 = move-exception
            r3 = r9
            goto L7c
        L81:
            r0 = move-exception
            r3 = r10
            goto L7c
        L84:
            org.fourthline.cling.model.UnsupportedDataException r10 = new org.fourthline.cling.model.UnsupportedDataException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Could not parse headers: "
            r0.append(r1)
            r0.append(r9)
            java.lang.String r0 = r0.toString()
            byte[] r1 = r3.getData()
            r10.<init>(r0, r9, r1)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.transport.impl.DatagramProcessorImpl.read(java.net.InetAddress, java.net.DatagramPacket):org.fourthline.cling.model.message.IncomingDatagramMessage");
    }

    public IncomingDatagramMessage readRequestMessage(InetAddress inetAddress, DatagramPacket datagramPacket, ByteArrayInputStream byteArrayInputStream, String str, String str2) throws Exception {
        UpnpHeaders upnpHeaders = new UpnpHeaders(byteArrayInputStream);
        UpnpRequest upnpRequest = new UpnpRequest(UpnpRequest.Method.getByHttpName(str));
        upnpRequest.setHttpMinorVersion(str2.toUpperCase(Locale.ROOT).equals("HTTP/1.1") ? 1 : 0);
        IncomingDatagramMessage incomingDatagramMessage = new IncomingDatagramMessage(upnpRequest, datagramPacket.getAddress(), datagramPacket.getPort(), inetAddress);
        incomingDatagramMessage.setHeaders(upnpHeaders);
        return incomingDatagramMessage;
    }

    public IncomingDatagramMessage readResponseMessage(InetAddress inetAddress, DatagramPacket datagramPacket, ByteArrayInputStream byteArrayInputStream, int i2, String str, String str2) throws Exception {
        UpnpHeaders upnpHeaders = new UpnpHeaders(byteArrayInputStream);
        UpnpResponse upnpResponse = new UpnpResponse(i2, str);
        upnpResponse.setHttpMinorVersion(str2.toUpperCase(Locale.ROOT).equals("HTTP/1.1") ? 1 : 0);
        IncomingDatagramMessage incomingDatagramMessage = new IncomingDatagramMessage(upnpResponse, datagramPacket.getAddress(), datagramPacket.getPort(), inetAddress);
        incomingDatagramMessage.setHeaders(upnpHeaders);
        return incomingDatagramMessage;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [org.fourthline.cling.model.message.UpnpOperation] */
    @Override // org.fourthline.cling.transport.spi.DatagramProcessor
    public DatagramPacket write(OutgoingDatagramMessage outgoingDatagramMessage) throws UnsupportedEncodingException, UnsupportedDataException {
        StringBuilder sb = new StringBuilder();
        ?? operation = outgoingDatagramMessage.getOperation();
        if (operation instanceof UpnpRequest) {
            sb.append(((UpnpRequest) operation).getHttpMethodName());
            sb.append(" * ");
            sb.append("HTTP/1.");
            sb.append(operation.getHttpMinorVersion());
            sb.append("\r\n");
        } else {
            if (!(operation instanceof UpnpResponse)) {
                throw new UnsupportedDataException("Message operation is not request or response, don't know how to process: " + outgoingDatagramMessage);
            }
            UpnpResponse upnpResponse = (UpnpResponse) operation;
            sb.append("HTTP/1.");
            sb.append(operation.getHttpMinorVersion());
            sb.append(" ");
            sb.append(upnpResponse.getStatusCode());
            sb.append(" ");
            sb.append(upnpResponse.getStatusMessage());
            sb.append("\r\n");
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append((CharSequence) sb);
        sb2.append(outgoingDatagramMessage.getHeaders().toString());
        sb2.append("\r\n");
        if (log.isLoggable(Level.FINER)) {
            log.finer("Writing message data for: " + outgoingDatagramMessage);
            log.finer("---------------------------------------------------------------------------------");
            log.finer(sb2.toString().substring(0, sb2.length() + (-2)));
            log.finer("---------------------------------------------------------------------------------");
        }
        try {
            byte[] bytes = sb2.toString().getBytes("US-ASCII");
            log.fine("Writing new datagram packet with " + bytes.length + " bytes for: " + outgoingDatagramMessage);
            return new DatagramPacket(bytes, bytes.length, outgoingDatagramMessage.getDestinationAddress(), outgoingDatagramMessage.getDestinationPort());
        } catch (UnsupportedEncodingException e2) {
            throw new UnsupportedDataException("Can't convert message content to US-ASCII: " + e2.getMessage(), e2, sb2);
        }
    }
}
