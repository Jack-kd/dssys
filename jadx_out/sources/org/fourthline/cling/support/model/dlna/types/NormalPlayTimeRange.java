package org.fourthline.cling.support.model.dlna.types;

import org.fourthline.cling.model.ServiceReference;
import org.fourthline.cling.model.types.InvalidValueException;

/* loaded from: classes5.dex */
public class NormalPlayTimeRange {
    public static final String PREFIX = "npt=";
    private NormalPlayTime timeDuration;
    private NormalPlayTime timeEnd;
    private NormalPlayTime timeStart;

    public NormalPlayTimeRange(long j2, long j3) {
        this.timeStart = new NormalPlayTime(j2);
        this.timeEnd = new NormalPlayTime(j3);
    }

    public static NormalPlayTimeRange valueOf(String str) throws InvalidValueException {
        return valueOf(str, false);
    }

    public String getString() {
        return getString(true);
    }

    public NormalPlayTime getTimeDuration() {
        return this.timeDuration;
    }

    public NormalPlayTime getTimeEnd() {
        return this.timeEnd;
    }

    public NormalPlayTime getTimeStart() {
        return this.timeStart;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.fourthline.cling.support.model.dlna.types.NormalPlayTimeRange valueOf(java.lang.String r6, boolean r7) throws org.fourthline.cling.model.types.InvalidValueException {
        /*
            java.lang.String r0 = "npt="
            boolean r0 = r6.startsWith(r0)
            if (r0 == 0) goto L64
            r0 = 4
            java.lang.String r0 = r6.substring(r0)
            java.lang.String r1 = "[-/]"
            java.lang.String[] r0 = r0.split(r1)
            int r1 = r0.length
            r2 = 0
            r3 = 1
            if (r1 == r3) goto L47
            r4 = 2
            if (r1 == r4) goto L37
            r5 = 3
            if (r1 != r5) goto L64
            r1 = r0[r4]
            int r1 = r1.length()
            if (r1 == 0) goto L37
            r1 = r0[r4]
            java.lang.String r5 = "*"
            boolean r1 = r1.equals(r5)
            if (r1 != 0) goto L37
            r1 = r0[r4]
            org.fourthline.cling.support.model.dlna.types.NormalPlayTime r1 = org.fourthline.cling.support.model.dlna.types.NormalPlayTime.valueOf(r1)
            goto L38
        L37:
            r1 = r2
        L38:
            r4 = r0[r3]
            int r4 = r4.length()
            if (r4 == 0) goto L48
            r2 = r0[r3]
            org.fourthline.cling.support.model.dlna.types.NormalPlayTime r2 = org.fourthline.cling.support.model.dlna.types.NormalPlayTime.valueOf(r2)
            goto L48
        L47:
            r1 = r2
        L48:
            r4 = 0
            r5 = r0[r4]
            int r5 = r5.length()
            if (r5 == 0) goto L64
            if (r7 == 0) goto L58
            if (r7 == 0) goto L64
            int r7 = r0.length
            if (r7 <= r3) goto L64
        L58:
            r6 = r0[r4]
            org.fourthline.cling.support.model.dlna.types.NormalPlayTime r6 = org.fourthline.cling.support.model.dlna.types.NormalPlayTime.valueOf(r6)
            org.fourthline.cling.support.model.dlna.types.NormalPlayTimeRange r7 = new org.fourthline.cling.support.model.dlna.types.NormalPlayTimeRange
            r7.<init>(r6, r2, r1)
            return r7
        L64:
            org.fourthline.cling.model.types.InvalidValueException r7 = new org.fourthline.cling.model.types.InvalidValueException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Can't parse NormalPlayTimeRange: "
            r0.append(r1)
            r0.append(r6)
            java.lang.String r6 = r0.toString()
            r7.<init>(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.support.model.dlna.types.NormalPlayTimeRange.valueOf(java.lang.String, boolean):org.fourthline.cling.support.model.dlna.types.NormalPlayTimeRange");
    }

    public String getString(boolean z2) {
        String str = PREFIX + this.timeStart.getString() + "-";
        if (this.timeEnd != null) {
            str = str + this.timeEnd.getString();
        }
        if (!z2) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(ServiceReference.DELIMITER);
        NormalPlayTime normalPlayTime = this.timeDuration;
        sb.append(normalPlayTime != null ? normalPlayTime.getString() : "*");
        return sb.toString();
    }

    public NormalPlayTimeRange(NormalPlayTime normalPlayTime, NormalPlayTime normalPlayTime2) {
        this.timeStart = normalPlayTime;
        this.timeEnd = normalPlayTime2;
    }

    public NormalPlayTimeRange(NormalPlayTime normalPlayTime, NormalPlayTime normalPlayTime2, NormalPlayTime normalPlayTime3) {
        this.timeStart = normalPlayTime;
        this.timeEnd = normalPlayTime2;
        this.timeDuration = normalPlayTime3;
    }
}
