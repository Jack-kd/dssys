package org.eclipse.jetty.util.security;

import R1.b;
import R1.c;
import java.io.Serializable;
import java.security.MessageDigest;
import org.eclipse.jetty.util.n;

/* loaded from: classes5.dex */
public abstract class Credential implements Serializable {
    private static final c LOG = b.a(Credential.class);
    private static final long serialVersionUID = -7760551052768181572L;

    public static class Crypt extends Credential {
        public static final String __TYPE = "CRYPT:";
        private static final long serialVersionUID = -2027792997664744210L;
        private final String _cooked;

        public Crypt(String str) {
            this._cooked = str.startsWith(__TYPE) ? str.substring(6) : str;
        }

        public static String crypt(String str, String str2) {
            return __TYPE + T1.c.a(str2, str);
        }

        @Override // org.eclipse.jetty.util.security.Credential
        public boolean check(Object obj) {
            if (obj instanceof char[]) {
                obj = new String((char[]) obj);
            }
            if (!(obj instanceof String) && !(obj instanceof Password)) {
                Credential.LOG.g("Can't check " + obj.getClass() + " against CRYPT", new Object[0]);
            }
            String string = obj.toString();
            String str = this._cooked;
            return str.equals(T1.c.a(string, str));
        }
    }

    public static class MD5 extends Credential {
        public static final String __TYPE = "MD5:";
        private static MessageDigest __md = null;
        public static final Object __md5Lock = new Object();
        private static final long serialVersionUID = 5533846540822684240L;
        private final byte[] _digest;

        public MD5(String str) {
            this._digest = n.d(str.startsWith(__TYPE) ? str.substring(4) : str, 16);
        }

        public static String digest(String str) {
            byte[] bArrDigest;
            try {
                synchronized (__md5Lock) {
                    if (__md == null) {
                        try {
                            __md = MessageDigest.getInstance("MD5");
                        } catch (Exception e2) {
                            Credential.LOG.e(e2);
                            return null;
                        }
                    }
                    __md.reset();
                    __md.update(str.getBytes("ISO-8859-1"));
                    bArrDigest = __md.digest();
                }
                return __TYPE + n.j(bArrDigest, 16);
            } catch (Exception e3) {
                Credential.LOG.e(e3);
                return null;
            }
        }

        @Override // org.eclipse.jetty.util.security.Credential
        public boolean check(Object obj) {
            byte[] bArrDigest;
            try {
                if (obj instanceof char[]) {
                    obj = new String((char[]) obj);
                }
                if (!(obj instanceof Password) && !(obj instanceof String)) {
                    if (!(obj instanceof MD5)) {
                        if (obj instanceof Credential) {
                            return ((Credential) obj).check(this);
                        }
                        Credential.LOG.g("Can't check " + obj.getClass() + " against MD5", new Object[0]);
                        return false;
                    }
                    MD5 md5 = (MD5) obj;
                    if (this._digest.length != md5._digest.length) {
                        return false;
                    }
                    int i2 = 0;
                    while (true) {
                        byte[] bArr = this._digest;
                        if (i2 >= bArr.length) {
                            return true;
                        }
                        if (bArr[i2] != md5._digest[i2]) {
                            return false;
                        }
                        i2++;
                    }
                }
                synchronized (__md5Lock) {
                    try {
                        if (__md == null) {
                            __md = MessageDigest.getInstance("MD5");
                        }
                        __md.reset();
                        __md.update(obj.toString().getBytes("ISO-8859-1"));
                        bArrDigest = __md.digest();
                    } finally {
                    }
                }
                if (bArrDigest != null && bArrDigest.length == this._digest.length) {
                    for (int i3 = 0; i3 < bArrDigest.length; i3++) {
                        if (bArrDigest[i3] != this._digest[i3]) {
                            return false;
                        }
                    }
                    return true;
                }
                return false;
            } catch (Exception e2) {
                Credential.LOG.e(e2);
                return false;
            }
        }

        public byte[] getDigest() {
            return this._digest;
        }
    }

    public static Credential getCredential(String str) {
        return str.startsWith(Crypt.__TYPE) ? new Crypt(str) : str.startsWith(MD5.__TYPE) ? new MD5(str) : new Password(str);
    }

    public abstract boolean check(Object obj);
}
