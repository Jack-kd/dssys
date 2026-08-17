package org.eclipse.jetty.util;

import com.umeng.analytics.pro.ek;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.Map;
import okio.Utf8;
import org.eclipse.jetty.util.Utf8Appendable;

/* loaded from: classes5.dex */
public class UrlEncoded extends MultiMap implements Cloneable {
    private static final R1.c LOG = R1.b.a(UrlEncoded.class);
    public static final String ENCODING = System.getProperty("org.eclipse.jetty.util.UrlEncoding.charset", "UTF-8");

    public UrlEncoded(UrlEncoded urlEncoded) {
        super((MultiMap) urlEncoded);
    }

    public static void decode88591To(InputStream inputStream, MultiMap multiMap, int i2, int i3) throws IOException {
        int i4;
        int i5;
        int i6;
        synchronized (multiMap) {
            try {
                StringBuffer stringBuffer = new StringBuffer();
                String string = null;
                int i7 = 0;
                while (true) {
                    int i8 = inputStream.read();
                    if (i8 >= 0) {
                        char c2 = (char) i8;
                        if (c2 == '%') {
                            int i9 = inputStream.read();
                            if (117 == i9) {
                                int i10 = inputStream.read();
                                if (i10 >= 0 && (i5 = inputStream.read()) >= 0 && (i6 = inputStream.read()) >= 0) {
                                    stringBuffer.append(Character.toChars((n.c(i9) << 12) + (n.c(i10) << 8) + (n.c(i5) << 4) + n.c(i6)));
                                }
                            } else if (i9 >= 0 && (i4 = inputStream.read()) >= 0) {
                                stringBuffer.append((char) ((n.c(i9) << 4) + n.c(i4)));
                            }
                        } else if (c2 == '&') {
                            String string2 = stringBuffer.length() == 0 ? "" : stringBuffer.toString();
                            stringBuffer.setLength(0);
                            if (string != null) {
                                multiMap.add(string, string2);
                            } else if (string2 != null && string2.length() > 0) {
                                multiMap.add(string2, "");
                            }
                            if (i3 > 0 && multiMap.size() > i3) {
                                throw new IllegalStateException(String.format("Form with too many keys [%d > %d]", Integer.valueOf(multiMap.size()), Integer.valueOf(i3)));
                            }
                            string = null;
                        } else if (c2 == '+') {
                            stringBuffer.append(' ');
                        } else if (c2 == '=' && string == null) {
                            string = stringBuffer.toString();
                            stringBuffer.setLength(0);
                        } else {
                            stringBuffer.append(c2);
                        }
                        if (i2 >= 0 && (i7 = i7 + 1) > i2) {
                            throw new IllegalStateException("Form too large");
                        }
                    } else if (string != null) {
                        Object string3 = stringBuffer.length() == 0 ? "" : stringBuffer.toString();
                        stringBuffer.setLength(0);
                        multiMap.add(string, string3);
                    } else if (stringBuffer.length() > 0) {
                        multiMap.add(stringBuffer.toString(), "");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:162:0x00d1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00d2 A[Catch: UnsupportedEncodingException -> 0x0121, LOOP:1: B:23:0x0059->B:58:0x00d2, LOOP_END, TryCatch #1 {UnsupportedEncodingException -> 0x0121, blocks: (B:10:0x0028, B:16:0x0038, B:17:0x0040, B:66:0x0100, B:20:0x004b, B:21:0x0053, B:29:0x0069, B:34:0x0075, B:58:0x00d2, B:48:0x00aa, B:39:0x0092, B:44:0x009d, B:50:0x00b5, B:53:0x00c2, B:54:0x00c6, B:55:0x00c9, B:59:0x00dc, B:62:0x00ec, B:64:0x00f2, B:65:0x00fd, B:69:0x010e, B:72:0x0115, B:74:0x011c), top: B:142:0x0028 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String decodeString(java.lang.String r18, int r19, int r20, java.lang.String r21) throws java.io.UnsupportedEncodingException {
        /*
            Method dump skipped, instructions count: 555
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.UrlEncoded.decodeString(java.lang.String, int, int, java.lang.String):java.lang.String");
    }

    public static void decodeTo(String str, MultiMap multiMap, String str2) {
        decodeTo(str, multiMap, str2, -1);
    }

    public static void decodeUtf16To(InputStream inputStream, MultiMap multiMap, int i2, int i3) throws IOException {
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, "UTF-16");
        StringWriter stringWriter = new StringWriter(8192);
        i.e(inputStreamReader, stringWriter, i2);
        decodeTo(stringWriter.getBuffer().toString(), multiMap, "UTF-16", i3);
    }

    public static void decodeUtf8To(byte[] bArr, int i2, int i3, MultiMap multiMap) {
        decodeUtf8To(bArr, i2, i3, multiMap, new q());
    }

    public static String encodeString(String str) {
        return encodeString(str, ENCODING);
    }

    public Object clone() {
        return new UrlEncoded(this);
    }

    public void decode(String str) {
        decodeTo(str, this, ENCODING, -1);
    }

    public String encode() {
        return encode(ENCODING, false);
    }

    public UrlEncoded() {
        super(6);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void decodeTo(java.lang.String r9, org.eclipse.jetty.util.MultiMap r10, java.lang.String r11, int r12) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.UrlEncoded.decodeTo(java.lang.String, org.eclipse.jetty.util.MultiMap, java.lang.String, int):void");
    }

    public static void decodeUtf8To(byte[] bArr, int i2, int i3, MultiMap multiMap, q qVar) {
        Utf8Appendable.NotUtf8Exception e2;
        StringBuilder sbH;
        int i4;
        int i5;
        synchronized (multiMap) {
            int i6 = i3 + i2;
            String string = null;
            while (i2 < i6) {
                try {
                    byte b3 = bArr[i2];
                    char c2 = (char) (b3 & 255);
                    if (c2 == '%') {
                        if (i2 + 2 < i6) {
                            int i7 = i2 + 1;
                            byte b4 = bArr[i7];
                            if (117 != b4) {
                                i2 += 2;
                                qVar.a((byte) ((n.b(b4) << 4) + n.b(bArr[i2])));
                            } else if (i2 + 5 < i6) {
                                try {
                                    sbH = qVar.h();
                                    i4 = i2 + 2;
                                    try {
                                        i5 = i2 + 3;
                                    } catch (Utf8Appendable.NotUtf8Exception e3) {
                                        e2 = e3;
                                        i2 = i4;
                                    }
                                } catch (Utf8Appendable.NotUtf8Exception e4) {
                                    e2 = e4;
                                    i2 = i7;
                                }
                                try {
                                    int iB = (n.b(bArr[i4]) << 12) + (n.b(bArr[i5]) << 8) + (n.b(bArr[i2 + 4]) << 4);
                                    i2 += 5;
                                    sbH.append(Character.toChars(iB + n.b(bArr[i2])));
                                } catch (Utf8Appendable.NotUtf8Exception e5) {
                                    e2 = e5;
                                    i2 = i5;
                                    R1.c cVar = LOG;
                                    cVar.g(e2.toString(), new Object[0]);
                                    cVar.a(e2);
                                    i2++;
                                }
                            } else {
                                qVar.h().append(Utf8.REPLACEMENT_CHARACTER);
                            }
                        } else {
                            qVar.h().append(Utf8.REPLACEMENT_CHARACTER);
                        }
                        i2 = i6;
                    } else if (c2 == '&') {
                        String string2 = qVar.i() == 0 ? "" : qVar.toString();
                        qVar.f();
                        if (string != null) {
                            multiMap.add(string, string2);
                        } else if (string2 != null && string2.length() > 0) {
                            multiMap.add(string2, "");
                        }
                        string = null;
                    } else if (c2 == '+') {
                        qVar.a((byte) 32);
                    } else if (c2 != '=') {
                        try {
                            qVar.a(b3);
                        } catch (Utf8Appendable.NotUtf8Exception e6) {
                            e2 = e6;
                            R1.c cVar2 = LOG;
                            cVar2.g(e2.toString(), new Object[0]);
                            cVar2.a(e2);
                            i2++;
                        }
                    } else if (string != null) {
                        qVar.a(b3);
                    } else {
                        string = qVar.toString();
                        qVar.f();
                    }
                    i2++;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (string != null) {
                String strG = qVar.i() == 0 ? "" : qVar.g();
                qVar.f();
                multiMap.add(string, strG);
            } else if (qVar.i() > 0) {
                multiMap.add(qVar.g(), "");
            }
        }
    }

    public static String encodeString(String str, String str2) throws UnsupportedEncodingException {
        byte[] bytes;
        int i2;
        int i3;
        if (str2 == null) {
            str2 = ENCODING;
        }
        try {
            bytes = str.getBytes(str2);
        } catch (UnsupportedEncodingException unused) {
            bytes = str.getBytes();
        }
        byte[] bArr = new byte[bytes.length * 3];
        boolean z2 = true;
        int i4 = 0;
        for (byte b3 : bytes) {
            if (b3 == 32) {
                bArr[i4] = 43;
                i4++;
                z2 = false;
            } else if ((b3 < 97 || b3 > 122) && ((b3 < 65 || b3 > 90) && (b3 < 48 || b3 > 57))) {
                int i5 = i4 + 1;
                bArr[i4] = 37;
                byte b4 = (byte) ((b3 & 240) >> 4);
                if (b4 >= 10) {
                    i2 = i4 + 2;
                    bArr[i5] = (byte) (b4 + com.sigmob.sdk.archives.tar.e.f35449O);
                } else {
                    i2 = i4 + 2;
                    bArr[i5] = (byte) (b4 + com.sigmob.sdk.archives.tar.e.f35442H);
                }
                byte b5 = (byte) (b3 & ek.f49295m);
                if (b5 >= 10) {
                    i3 = i2 + 1;
                    bArr[i2] = (byte) (b5 + com.sigmob.sdk.archives.tar.e.f35449O);
                } else {
                    i3 = i2 + 1;
                    bArr[i2] = (byte) (b5 + com.sigmob.sdk.archives.tar.e.f35442H);
                }
                z2 = false;
                i4 = i3;
            } else {
                bArr[i4] = b3;
                i4++;
            }
        }
        if (z2) {
            return str;
        }
        try {
            return new String(bArr, 0, i4, str2);
        } catch (UnsupportedEncodingException unused2) {
            return new String(bArr, 0, i4);
        }
    }

    public void decode(String str, String str2) {
        decodeTo(str, this, str2, -1);
    }

    public String encode(String str) {
        return encode(str, false);
    }

    public UrlEncoded(String str) {
        super(6);
        decode(str, ENCODING);
    }

    public synchronized String encode(String str, boolean z2) {
        return encode(this, str, z2);
    }

    public static String encode(MultiMap multiMap, String str, boolean z2) {
        if (str == null) {
            str = ENCODING;
        }
        StringBuilder sb = new StringBuilder(128);
        Iterator it = multiMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String string = entry.getKey().toString();
            Object value = entry.getValue();
            int size = LazyList.size(value);
            if (size == 0) {
                sb.append(encodeString(string, str));
                if (z2) {
                    sb.append('=');
                }
            } else {
                for (int i2 = 0; i2 < size; i2++) {
                    if (i2 > 0) {
                        sb.append('&');
                    }
                    Object obj = LazyList.get(value, i2);
                    sb.append(encodeString(string, str));
                    if (obj != null) {
                        String string2 = obj.toString();
                        if (string2.length() > 0) {
                            sb.append('=');
                            sb.append(encodeString(string2, str));
                        } else if (z2) {
                            sb.append('=');
                        }
                    } else if (z2) {
                        sb.append('=');
                    }
                }
            }
            if (it.hasNext()) {
                sb.append('&');
            }
        }
        return sb.toString();
    }

    public UrlEncoded(String str, String str2) {
        super(6);
        decode(str, str2);
    }

    public static void decodeTo(InputStream inputStream, MultiMap multiMap, String str, int i2, int i3) throws IOException {
        int i4;
        int i5;
        int i6;
        if (str == null) {
            str = ENCODING;
        }
        if ("UTF-8".equalsIgnoreCase(str)) {
            decodeUtf8To(inputStream, multiMap, i2, i3);
            return;
        }
        if ("ISO-8859-1".equals(str)) {
            decode88591To(inputStream, multiMap, i2, i3);
            return;
        }
        if ("UTF-16".equalsIgnoreCase(str)) {
            decodeUtf16To(inputStream, multiMap, i2, i3);
            return;
        }
        synchronized (multiMap) {
            try {
                f fVar = new f();
                String string = null;
                int i7 = 0;
                while (true) {
                    int i8 = inputStream.read();
                    if (i8 > 0) {
                        char c2 = (char) i8;
                        if (c2 == '%') {
                            int i9 = inputStream.read();
                            if (117 == i9) {
                                int i10 = inputStream.read();
                                if (i10 >= 0 && (i5 = inputStream.read()) >= 0 && (i6 = inputStream.read()) >= 0) {
                                    fVar.write(new String(Character.toChars((n.c(i9) << 12) + (n.c(i10) << 8) + (n.c(i5) << 4) + n.c(i6))).getBytes(str));
                                }
                            } else if (i9 >= 0 && (i4 = inputStream.read()) >= 0) {
                                fVar.write((n.c(i9) << 4) + n.c(i4));
                            }
                        } else if (c2 == '&') {
                            String string2 = fVar.size() == 0 ? "" : fVar.toString(str);
                            fVar.c(0);
                            if (string != null) {
                                multiMap.add(string, string2);
                            } else if (string2 != null && string2.length() > 0) {
                                multiMap.add(string2, "");
                            }
                            if (i3 > 0 && multiMap.size() > i3) {
                                throw new IllegalStateException(String.format("Form with too many keys [%d > %d]", Integer.valueOf(multiMap.size()), Integer.valueOf(i3)));
                            }
                            string = null;
                        } else if (c2 == '+') {
                            fVar.write(32);
                        } else if (c2 != '=' || string != null) {
                            fVar.write(i8);
                        } else {
                            string = fVar.size() == 0 ? "" : fVar.toString(str);
                            fVar.c(0);
                        }
                        i7++;
                        if (i2 >= 0 && i7 > i2) {
                            throw new IllegalStateException("Form too large");
                        }
                    } else {
                        int size = fVar.size();
                        if (string != null) {
                            Object string3 = size == 0 ? "" : fVar.toString(str);
                            fVar.c(0);
                            multiMap.add(string, string3);
                        } else if (size > 0) {
                            multiMap.add(fVar.toString(str), "");
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:85:0x00f9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x000a A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void decodeUtf8To(java.io.InputStream r10, org.eclipse.jetty.util.MultiMap r11, int r12, int r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.UrlEncoded.decodeUtf8To(java.io.InputStream, org.eclipse.jetty.util.MultiMap, int, int):void");
    }
}
