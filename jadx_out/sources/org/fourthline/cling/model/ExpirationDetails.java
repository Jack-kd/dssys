package org.fourthline.cling.model;

import java.util.Date;

/* loaded from: classes5.dex */
public class ExpirationDetails {
    public static final int UNLIMITED_AGE = 0;
    private static String simpleName = "ExpirationDetails";
    private long lastRefreshTimestampSeconds;
    private int maxAgeSeconds;

    public ExpirationDetails() {
        this.maxAgeSeconds = 0;
        this.lastRefreshTimestampSeconds = getCurrentTimestampSeconds();
    }

    public long getCurrentTimestampSeconds() {
        return new Date().getTime() / 1000;
    }

    public long getLastRefreshTimestampSeconds() {
        return this.lastRefreshTimestampSeconds;
    }

    public int getMaxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    public long getSecondsUntilExpiration() {
        int i2 = this.maxAgeSeconds;
        if (i2 == 0) {
            return 2147483647L;
        }
        return (this.lastRefreshTimestampSeconds + i2) - getCurrentTimestampSeconds();
    }

    public boolean hasExpired() {
        return hasExpired(false);
    }

    public void setLastRefreshTimestampSeconds(long j2) {
        this.lastRefreshTimestampSeconds = j2;
    }

    public void stampLastRefresh() {
        setLastRefreshTimestampSeconds(getCurrentTimestampSeconds());
    }

    public String toString() {
        return "(" + simpleName + ") MAX AGE: " + this.maxAgeSeconds;
    }

    public boolean hasExpired(boolean z2) {
        int i2 = this.maxAgeSeconds;
        if (i2 != 0) {
            return this.lastRefreshTimestampSeconds + ((long) (i2 / (z2 ? 2 : 1))) < getCurrentTimestampSeconds();
        }
        return false;
    }

    public ExpirationDetails(int i2) {
        this.maxAgeSeconds = 0;
        this.lastRefreshTimestampSeconds = getCurrentTimestampSeconds();
        this.maxAgeSeconds = i2;
    }
}
