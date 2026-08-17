package com.sigmob.sdk.base.models;

import android.content.Context;
import android.os.SystemClock;
import android.view.MotionEvent;
import com.czhj.sdk.common.track.BaseMacroCommon;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.TouchLocation;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.b;
import com.sigmob.sdk.base.utils.s;
import java.util.Locale;
import java.util.Random;

/* loaded from: classes4.dex */
public class SigMacroCommon extends BaseMacroCommon {
    public static final String DEFAULT_XY = "-999";
    public static final String _ADSCENEID_ = "_ADSCENEID_";
    public static final String _ADSCENE_ = "_ADSCENE_";
    public static final String _BEGINTIME_ = "_BEGINTIME_";
    public static final String _BEHAVIOR_ = "_BEHAVIOR_";
    public static final String _CLICKAREA_ = "_CLICKAREA_";
    public static final String _CLICKID_ = "_CLICKID_";
    public static final String _CLICKSCENE_ = "_CLICKSCENE_";
    public static final String _COMPLETED_ = "_COMPLETED_";
    public static final String _CURRENCY_ = "_CURRENCY_";
    public static final String _DOWNTS_ = "_DOWNTS_";
    public static final String _DOWNX_ = "_DOWNX_";
    public static final String _DOWNY_ = "_DOWNY_";
    public static final String _ENDTIME_ = "_ENDTIME_";
    public static final String _FINALCLICK_ = "_FINALCLICK_";
    public static final String _HEIGHT_ = "_HEIGHT_";
    public static final String _HIGHESTLOSSPRICE_ = "_HIGHESTLOSSPRICE_";
    public static final String _ISNC_ = "_ISNC_";
    public static final String _IS_TRUNCATION_ = "_ISTRUNCATION_";
    public static final String _PLAYFIRSTFRAME_ = "_PLAYFIRSTFRAME_";
    public static final String _PLAYLASTFRAME_ = "_PLAYLASTFRAME_";
    public static final String _PROGRESS_ = "_PROGRESS_";
    public static final String _PUBLISHERPRICE_ = "_PUBLISHERPRICE_";
    public static final String _SCENE_ = "_SCENE_";
    public static final String _SETCLOSETIME_ = "_SETCLOSETIME_";
    public static final String _SHOWSKIPTIME_ = "_SHOWSKIPTIME_";
    public static final String _SLD_ = "_SLD_";
    public static final String _SLOTHEIGHT_ = "_SLOTHEIGHT_";
    public static final String _SLOTWIDTH_ = "_SLOTWIDTH_";
    public static final String _STATUS_ = "_STATUS_";
    public static final String _TEMPLATE_ = "_TEMPLATE_";
    public static final String _TYPE_ = "_TYPE_";
    public static final String _UPTS_ = "_UPTS_";
    public static final String _UPX_ = "_UPX_";
    public static final String _UPY_ = "_UPY_";
    public static final String _VIDEOTIME_ = "_VIDEOTIME_";
    public static final String _VMD5_ = "_VMD5_";
    public static final String _VURL_ = "_VURL_";
    public static final String _WIDTH_ = "_WIDTH_";
    private static final long serialVersionUID = 1;
    private static final long initialUptimeMillis = SystemClock.uptimeMillis();
    private static final long initialCurrentTimeMillis = System.currentTimeMillis();

    public static long convertUptimeMillisToCurrentTimeMillis(long j2) {
        return initialCurrentTimeMillis + (j2 - initialUptimeMillis);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String getMacroValue(java.lang.String r2) {
        /*
            java.lang.String r0 = "unFind"
            int r1 = r2.hashCode()     // Catch: java.lang.Throwable -> L8e
            switch(r1) {
                case -1590308376: goto L5b;
                case -1494891674: goto L51;
                case -662306149: goto L47;
                case -415971623: goto L3c;
                case 853731986: goto L32;
                case 891331278: goto L28;
                case 973765784: goto L1e;
                case 1179083118: goto L14;
                case 2074198166: goto La;
                default: goto L9;
            }     // Catch: java.lang.Throwable -> L8e
        L9:
            goto L65
        La:
            java.lang.String r1 = "_SLOTWIDTH_"
            boolean r2 = r2.equals(r1)     // Catch: java.lang.Throwable -> L8e
            if (r2 == 0) goto L65
            r2 = 5
            goto L66
        L14:
            java.lang.String r1 = "_STATUS_"
            boolean r2 = r2.equals(r1)     // Catch: java.lang.Throwable -> L8e
            if (r2 == 0) goto L65
            r2 = 2
            goto L66
        L1e:
            java.lang.String r1 = "_WIDTH_"
            boolean r2 = r2.equals(r1)     // Catch: java.lang.Throwable -> L8e
            if (r2 == 0) goto L65
            r2 = 6
            goto L66
        L28:
            java.lang.String r1 = "_BEHAVIOR_"
            boolean r2 = r2.equals(r1)     // Catch: java.lang.Throwable -> L8e
            if (r2 == 0) goto L65
            r2 = 3
            goto L66
        L32:
            java.lang.String r1 = "_SCENE_"
            boolean r2 = r2.equals(r1)     // Catch: java.lang.Throwable -> L8e
            if (r2 == 0) goto L65
            r2 = 1
            goto L66
        L3c:
            java.lang.String r1 = "_HEIGHT_"
            boolean r2 = r2.equals(r1)     // Catch: java.lang.Throwable -> L8e
            if (r2 == 0) goto L65
            r2 = 8
            goto L66
        L47:
            java.lang.String r1 = "_SLOTHEIGHT_"
            boolean r2 = r2.equals(r1)     // Catch: java.lang.Throwable -> L8e
            if (r2 == 0) goto L65
            r2 = 7
            goto L66
        L51:
            java.lang.String r1 = "_TYPE_"
            boolean r2 = r2.equals(r1)     // Catch: java.lang.Throwable -> L8e
            if (r2 == 0) goto L65
            r2 = 0
            goto L66
        L5b:
            java.lang.String r1 = "_BEGINTIME_"
            boolean r2 = r2.equals(r1)     // Catch: java.lang.Throwable -> L8e
            if (r2 == 0) goto L65
            r2 = 4
            goto L66
        L65:
            r2 = -1
        L66:
            java.lang.String r1 = "0"
            switch(r2) {
                case 0: goto L8b;
                case 1: goto L8a;
                case 2: goto L8a;
                case 3: goto L87;
                case 4: goto L86;
                case 5: goto L79;
                case 6: goto L79;
                case 7: goto L6c;
                case 8: goto L6c;
                default: goto L6b;
            }
        L6b:
            return r0
        L6c:
            com.czhj.sdk.common.ClientMetadata r2 = com.czhj.sdk.common.ClientMetadata.getInstance()     // Catch: java.lang.Throwable -> L8e
            java.lang.Integer r2 = r2.getDeviceScreenRealHeightDip()     // Catch: java.lang.Throwable -> L8e
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: java.lang.Throwable -> L8e
            return r2
        L79:
            com.czhj.sdk.common.ClientMetadata r2 = com.czhj.sdk.common.ClientMetadata.getInstance()     // Catch: java.lang.Throwable -> L8e
            java.lang.Integer r2 = r2.getDeviceScreenRealWidthDip()     // Catch: java.lang.Throwable -> L8e
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: java.lang.Throwable -> L8e
            return r2
        L86:
            return r1
        L87:
            java.lang.String r2 = "2"
            return r2
        L8a:
            return r1
        L8b:
            java.lang.String r2 = "1"
            return r2
        L8e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.base.models.SigMacroCommon.getMacroValue(java.lang.String):java.lang.String");
    }

    public String getCoordinate() {
        return String.format("%s,%s,%s,%s", getMarcoKey(_DOWNX_), getMarcoKey(_DOWNY_), getMarcoKey(_UPX_), getMarcoKey(_UPY_));
    }

    @Override // com.czhj.sdk.common.track.BaseMacroCommon
    public String replaceWithDefault(String str) {
        String strReplaceWithDefault = super.replaceWithDefault(str);
        SigmobLog.d("macroProcess() called with:[" + str + "][" + strReplaceWithDefault + "]");
        if (s.b(strReplaceWithDefault) && !strReplaceWithDefault.equals("unFind")) {
            return strReplaceWithDefault;
        }
        try {
            String macroValue = getMacroValue(str);
            SigmobLog.d("macroProcess() called with: [" + str + "][" + macroValue + "]");
            if (!s.b(macroValue)) {
                return null;
            }
            if (macroValue.equals("unFind")) {
                return null;
            }
            return macroValue;
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return null;
        }
    }

    public void updateClickMarco(MotionEvent motionEvent, MotionEvent motionEvent2, boolean z2) {
        if (motionEvent == null) {
            motionEvent = motionEvent2;
        }
        Context contextE = b.e();
        float rawX = z2 ? motionEvent.getRawX() : motionEvent.getX();
        float rawY = z2 ? motionEvent.getRawY() : motionEvent.getY();
        float rawX2 = z2 ? motionEvent2.getRawX() : motionEvent2.getX();
        float rawY2 = z2 ? motionEvent2.getRawY() : motionEvent2.getY();
        long eventTime = motionEvent.getEventTime();
        long eventTime2 = motionEvent2.getEventTime();
        addMarcoKey(_DOWNX_, String.valueOf(Dips.pixelsToIntDips(rawX, contextE)));
        addMarcoKey(_DOWNY_, String.valueOf(Dips.pixelsToIntDips(rawY, contextE)));
        addMarcoKey(_UPX_, String.valueOf(Dips.pixelsToIntDips(rawX2, contextE)));
        addMarcoKey(_UPY_, String.valueOf(Dips.pixelsToIntDips(rawY2, contextE)));
        addMarcoKey(_DOWNTS_, String.valueOf(convertUptimeMillisToCurrentTimeMillis(eventTime)));
        addMarcoKey(_UPTS_, String.valueOf(convertUptimeMillisToCurrentTimeMillis(eventTime2)));
        addMarcoKey(_SLD_, "0");
    }

    public static String getCoordinate(MotionEvent motionEvent, MotionEvent motionEvent2, boolean z2) {
        Context contextE = b.e();
        return String.format(Locale.getDefault(), "%d,%d,%d,%d", Integer.valueOf(Dips.pixelsToIntDips(z2 ? motionEvent.getRawX() : motionEvent.getX(), contextE)), Integer.valueOf(Dips.pixelsToIntDips(z2 ? motionEvent.getRawY() : motionEvent.getY(), contextE)), Integer.valueOf(Dips.pixelsToIntDips(z2 ? motionEvent2.getRawX() : motionEvent2.getX(), contextE)), Integer.valueOf(Dips.pixelsToIntDips(z2 ? motionEvent2.getRawY() : motionEvent2.getY(), contextE)));
    }

    public void updateClickMarco(TouchLocation touchLocation, TouchLocation touchLocation2) {
        if (touchLocation == null && touchLocation2 == null) {
            return;
        }
        Context contextE = b.e();
        TouchLocation touchLocation3 = touchLocation == null ? touchLocation2 : touchLocation;
        if (touchLocation2 != null) {
            touchLocation = touchLocation2;
        }
        updateClickMarco(String.valueOf(Dips.pixelsToIntDips(touchLocation3.getX(), contextE)), String.valueOf(Dips.pixelsToIntDips(touchLocation3.getY(), contextE)), String.valueOf(Dips.pixelsToIntDips(touchLocation.getX(), contextE)), String.valueOf(Dips.pixelsToIntDips(touchLocation.getY(), contextE)));
        addMarcoKey(_SLD_, "0");
    }

    public void updateClickMarco(String str, String str2, String str3, String str4) {
        addMarcoKey(_DOWNX_, str);
        addMarcoKey(_DOWNY_, str2);
        addMarcoKey(_UPX_, str3);
        addMarcoKey(_UPY_, str4);
        if (str.equals(DEFAULT_XY)) {
            return;
        }
        String marcoKey = getMarcoKey(_DOWNTS_);
        String marcoKey2 = getMarcoKey(_UPTS_);
        if (s.b(marcoKey) && s.b(marcoKey2)) {
            return;
        }
        Random random = new Random();
        addMarcoKey(_DOWNTS_, String.valueOf(System.currentTimeMillis()));
        addMarcoKey(_UPTS_, String.valueOf(System.currentTimeMillis() + random.nextInt(50)));
    }
}
