package org.eclipse.jetty.client;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import org.eclipse.jetty.util.m;

/* loaded from: classes5.dex */
public abstract class f extends e {
    private int _bufferSize;
    private String _encoding;
    private File _fileForUpload;
    private ByteArrayOutputStream _responseContent;

    public f() {
        super(false);
        this._bufferSize = 4096;
        this._encoding = "utf-8";
    }

    public final synchronized InputStream e() {
        return new FileInputStream(this._fileForUpload);
    }

    public synchronized File getFileForUpload() {
        return this._fileForUpload;
    }

    public synchronized String getResponseContent() throws UnsupportedEncodingException {
        ByteArrayOutputStream byteArrayOutputStream = this._responseContent;
        if (byteArrayOutputStream == null) {
            return null;
        }
        return byteArrayOutputStream.toString(this._encoding);
    }

    public synchronized byte[] getResponseContentBytes() {
        ByteArrayOutputStream byteArrayOutputStream = this._responseContent;
        if (byteArrayOutputStream == null) {
            return null;
        }
        return byteArrayOutputStream.toByteArray();
    }

    @Override // org.eclipse.jetty.client.j
    public synchronized void onResponseContent(L1.d dVar) throws IOException {
        try {
            super.onResponseContent(dVar);
            if (this._responseContent == null) {
                this._responseContent = new ByteArrayOutputStream(this._bufferSize);
            }
            dVar.writeTo(this._responseContent);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // org.eclipse.jetty.client.e, org.eclipse.jetty.client.j
    public synchronized void onResponseHeader(L1.d dVar, L1.d dVar2) throws IOException {
        String strB;
        int iIndexOf;
        try {
            super.onResponseHeader(dVar, dVar2);
            int iE = org.eclipse.jetty.http.j.f52264d.e(dVar);
            if (iE == 12) {
                this._bufferSize = L1.g.h(dVar2);
            } else if (iE == 16 && (iIndexOf = (strB = m.b(dVar2.toString())).indexOf("charset=")) > 0) {
                String strSubstring = strB.substring(iIndexOf + 8);
                this._encoding = strSubstring;
                int iIndexOf2 = strSubstring.indexOf(59);
                if (iIndexOf2 > 0) {
                    this._encoding = this._encoding.substring(0, iIndexOf2);
                }
            }
        } finally {
        }
    }

    @Override // org.eclipse.jetty.client.e, org.eclipse.jetty.client.j
    public synchronized void onResponseStatus(L1.d dVar, int i2, L1.d dVar2) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = this._responseContent;
            if (byteArrayOutputStream != null) {
                byteArrayOutputStream.reset();
            }
            super.onResponseStatus(dVar, i2, dVar2);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // org.eclipse.jetty.client.j
    public synchronized void onRetry() throws IOException {
        try {
            if (this._fileForUpload != null) {
                setRequestContent(null);
                setRequestContentSource(e());
            } else {
                super.onRetry();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void setFileForUpload(File file) throws IOException {
        this._fileForUpload = file;
        setRequestContentSource(e());
    }

    public f(boolean z2) {
        super(z2);
        this._bufferSize = 4096;
        this._encoding = "utf-8";
    }
}
