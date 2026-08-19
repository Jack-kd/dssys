package org.seamless.util;

import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.util.Random;

/* loaded from: classes5.dex */
public class RandomToken {
    protected final Random random;

    public RandomToken() throws NoSuchAlgorithmException, NoSuchProviderException {
        try {
            SecureRandom secureRandom = SecureRandom.getInstance("SHA1PRNG", "SUN");
            this.random = secureRandom;
            secureRandom.nextBytes(new byte[1]);
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    public String generate() {
        String str = null;
        while (true) {
            if (str != null && str.length() != 0) {
                return str;
            }
            long jNextLong = this.random.nextLong();
            if (jNextLong < 0) {
                jNextLong = -jNextLong;
            }
            long jNextLong2 = this.random.nextLong();
            if (jNextLong2 < 0) {
                jNextLong2 = -jNextLong2;
            }
            str = Long.toString(jNextLong, 36) + Long.toString(jNextLong2, 36);
        }
    }
}
