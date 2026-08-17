package org.eclipse.jetty.security.authentication;

import R1.b;
import R1.c;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.eclipse.jetty.util.n;
import org.eclipse.jetty.util.security.Credential;

/* loaded from: classes5.dex */
public abstract class DigestAuthenticator extends a {

    /* renamed from: a, reason: collision with root package name */
    public static final c f52502a = b.a(DigestAuthenticator.class);

    public static class Digest extends Credential {
        private static final long serialVersionUID = -2484639019549527724L;
        final String method;
        String username = "";
        String realm = "";
        String nonce = "";
        String nc = "";
        String cnonce = "";
        String qop = "";
        String uri = "";
        String response = "";

        public Digest(String str) {
            this.method = str;
        }

        @Override // org.eclipse.jetty.util.security.Credential
        public boolean check(Object obj) throws NoSuchAlgorithmException {
            byte[] bArrDigest;
            if (obj instanceof char[]) {
                obj = new String((char[]) obj);
            }
            String string = obj instanceof String ? (String) obj : obj.toString();
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                if (obj instanceof Credential.MD5) {
                    bArrDigest = ((Credential.MD5) obj).getDigest();
                } else {
                    messageDigest.update(this.username.getBytes("ISO-8859-1"));
                    messageDigest.update((byte) 58);
                    messageDigest.update(this.realm.getBytes("ISO-8859-1"));
                    messageDigest.update((byte) 58);
                    messageDigest.update(string.getBytes("ISO-8859-1"));
                    bArrDigest = messageDigest.digest();
                }
                messageDigest.reset();
                messageDigest.update(this.method.getBytes("ISO-8859-1"));
                messageDigest.update((byte) 58);
                messageDigest.update(this.uri.getBytes("ISO-8859-1"));
                byte[] bArrDigest2 = messageDigest.digest();
                messageDigest.update(n.j(bArrDigest, 16).getBytes("ISO-8859-1"));
                messageDigest.update((byte) 58);
                messageDigest.update(this.nonce.getBytes("ISO-8859-1"));
                messageDigest.update((byte) 58);
                messageDigest.update(this.nc.getBytes("ISO-8859-1"));
                messageDigest.update((byte) 58);
                messageDigest.update(this.cnonce.getBytes("ISO-8859-1"));
                messageDigest.update((byte) 58);
                messageDigest.update(this.qop.getBytes("ISO-8859-1"));
                messageDigest.update((byte) 58);
                messageDigest.update(n.j(bArrDigest2, 16).getBytes("ISO-8859-1"));
                return n.j(messageDigest.digest(), 16).equalsIgnoreCase(this.response);
            } catch (Exception e2) {
                DigestAuthenticator.f52502a.e(e2);
                return false;
            }
        }

        public String toString() {
            return this.username + "," + this.response;
        }
    }
}
