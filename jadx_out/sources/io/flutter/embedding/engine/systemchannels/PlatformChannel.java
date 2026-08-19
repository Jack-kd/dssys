package io.flutter.embedding.engine.systemchannels;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.flutter.Log;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.plugin.common.JSONMethodCodec;
import io.flutter.plugin.common.MethodChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class PlatformChannel {
    private static final String TAG = "PlatformChannel";

    @NonNull
    public final MethodChannel channel;

    @NonNull
    @VisibleForTesting
    final MethodChannel.MethodCallHandler parsingMethodCallHandler;

    @Nullable
    private PlatformMessageHandler platformMessageHandler;

    public static class AppSwitcherDescription {
        public final int color;

        @NonNull
        public final String label;

        public AppSwitcherDescription(int i2, @NonNull String str) {
            this.color = i2;
            this.label = str;
        }
    }

    public enum Brightness {
        LIGHT("Brightness.light"),
        DARK("Brightness.dark");


        @NonNull
        private String encodedName;

        Brightness(@NonNull String str) {
            this.encodedName = str;
        }

        @NonNull
        public static Brightness fromValue(@NonNull String str) throws NoSuchFieldException {
            for (Brightness brightness : values()) {
                if (brightness.encodedName.equals(str)) {
                    return brightness;
                }
            }
            throw new NoSuchFieldException("No such Brightness: " + str);
        }
    }

    public enum ClipboardContentFormat {
        PLAIN_TEXT("text/plain");


        @NonNull
        private String encodedName;

        ClipboardContentFormat(@NonNull String str) {
            this.encodedName = str;
        }

        @NonNull
        public static ClipboardContentFormat fromValue(@NonNull String str) throws NoSuchFieldException {
            for (ClipboardContentFormat clipboardContentFormat : values()) {
                if (clipboardContentFormat.encodedName.equals(str)) {
                    return clipboardContentFormat;
                }
            }
            throw new NoSuchFieldException("No such ClipboardContentFormat: " + str);
        }
    }

    public enum DeviceOrientation {
        PORTRAIT_UP("DeviceOrientation.portraitUp"),
        PORTRAIT_DOWN("DeviceOrientation.portraitDown"),
        LANDSCAPE_LEFT("DeviceOrientation.landscapeLeft"),
        LANDSCAPE_RIGHT("DeviceOrientation.landscapeRight");


        @NonNull
        private String encodedName;

        DeviceOrientation(@NonNull String str) {
            this.encodedName = str;
        }

        @NonNull
        public static DeviceOrientation fromValue(@NonNull String str) throws NoSuchFieldException {
            for (DeviceOrientation deviceOrientation : values()) {
                if (deviceOrientation.encodedName.equals(str)) {
                    return deviceOrientation;
                }
            }
            throw new NoSuchFieldException("No such DeviceOrientation: " + str);
        }
    }

    public enum HapticFeedbackType {
        STANDARD(null),
        LIGHT_IMPACT("HapticFeedbackType.lightImpact"),
        MEDIUM_IMPACT("HapticFeedbackType.mediumImpact"),
        HEAVY_IMPACT("HapticFeedbackType.heavyImpact"),
        SELECTION_CLICK("HapticFeedbackType.selectionClick"),
        SUCCESS_NOTIFICATION("HapticFeedbackType.successNotification"),
        WARNING_NOTIFICATION("HapticFeedbackType.warningNotification"),
        ERROR_NOTIFICATION("HapticFeedbackType.errorNotification");


        @Nullable
        private final String encodedName;

        HapticFeedbackType(@Nullable String str) {
            this.encodedName = str;
        }

        @NonNull
        public static HapticFeedbackType fromValue(@Nullable String str) throws NoSuchFieldException {
            for (HapticFeedbackType hapticFeedbackType : values()) {
                String str2 = hapticFeedbackType.encodedName;
                if ((str2 == null && str == null) || (str2 != null && str2.equals(str))) {
                    return hapticFeedbackType;
                }
            }
            throw new NoSuchFieldException("No such HapticFeedbackType: " + str);
        }
    }

    public interface PlatformMessageHandler {
        boolean clipboardHasStrings();

        @Nullable
        CharSequence getClipboardData(@Nullable ClipboardContentFormat clipboardContentFormat);

        void playSystemSound(@NonNull SoundType soundType);

        void popSystemNavigator();

        void restoreSystemUiOverlays();

        void setApplicationSwitcherDescription(@NonNull AppSwitcherDescription appSwitcherDescription);

        void setClipboardData(@NonNull String str);

        default void setFrameworkHandlesBack(boolean z2) {
        }

        void setPreferredOrientations(int i2);

        void setSystemUiChangeListener();

        void setSystemUiOverlayStyle(@NonNull SystemChromeStyle systemChromeStyle);

        void share(@NonNull String str);

        void showSystemOverlays(@NonNull List<SystemUiOverlay> list);

        void showSystemUiMode(@NonNull SystemUiMode systemUiMode);

        void vibrateHapticFeedback(@NonNull HapticFeedbackType hapticFeedbackType);
    }

    public enum SoundType {
        CLICK("SystemSoundType.click"),
        TICK("SystemSoundType.tick"),
        ALERT("SystemSoundType.alert");


        @NonNull
        private final String encodedName;

        SoundType(@NonNull String str) {
            this.encodedName = str;
        }

        @NonNull
        public static SoundType fromValue(@NonNull String str) throws NoSuchFieldException {
            for (SoundType soundType : values()) {
                if (soundType.encodedName.equals(str)) {
                    return soundType;
                }
            }
            throw new NoSuchFieldException("No such SoundType: " + str);
        }
    }

    public static class SystemChromeStyle {

        @Nullable
        public final Integer statusBarColor;

        @Nullable
        public final Brightness statusBarIconBrightness;

        @Nullable
        public final Integer systemNavigationBarColor;

        @Nullable
        public final Boolean systemNavigationBarContrastEnforced;

        @Nullable
        public final Integer systemNavigationBarDividerColor;

        @Nullable
        public final Brightness systemNavigationBarIconBrightness;

        @Nullable
        public final Boolean systemStatusBarContrastEnforced;

        public SystemChromeStyle(@Nullable Integer num, @Nullable Brightness brightness, @Nullable Boolean bool, @Nullable Integer num2, @Nullable Brightness brightness2, @Nullable Integer num3, @Nullable Boolean bool2) {
            this.statusBarColor = num;
            this.statusBarIconBrightness = brightness;
            this.systemStatusBarContrastEnforced = bool;
            this.systemNavigationBarColor = num2;
            this.systemNavigationBarIconBrightness = brightness2;
            this.systemNavigationBarDividerColor = num3;
            this.systemNavigationBarContrastEnforced = bool2;
        }
    }

    public enum SystemUiMode {
        LEAN_BACK("SystemUiMode.leanBack"),
        IMMERSIVE("SystemUiMode.immersive"),
        IMMERSIVE_STICKY("SystemUiMode.immersiveSticky"),
        EDGE_TO_EDGE("SystemUiMode.edgeToEdge");


        @NonNull
        private String encodedName;

        SystemUiMode(@NonNull String str) {
            this.encodedName = str;
        }

        @NonNull
        public static SystemUiMode fromValue(@NonNull String str) throws NoSuchFieldException {
            for (SystemUiMode systemUiMode : values()) {
                if (systemUiMode.encodedName.equals(str)) {
                    return systemUiMode;
                }
            }
            throw new NoSuchFieldException("No such SystemUiMode: " + str);
        }
    }

    public enum SystemUiOverlay {
        TOP_OVERLAYS("SystemUiOverlay.top"),
        BOTTOM_OVERLAYS("SystemUiOverlay.bottom");


        @NonNull
        private String encodedName;

        SystemUiOverlay(@NonNull String str) {
            this.encodedName = str;
        }

        @NonNull
        public static SystemUiOverlay fromValue(@NonNull String str) throws NoSuchFieldException {
            for (SystemUiOverlay systemUiOverlay : values()) {
                if (systemUiOverlay.encodedName.equals(str)) {
                    return systemUiOverlay;
                }
            }
            throw new NoSuchFieldException("No such SystemUiOverlay: " + str);
        }
    }

    public PlatformChannel(@NonNull DartExecutor dartExecutor) {
        MethodChannel.MethodCallHandler methodCallHandler = new MethodChannel.MethodCallHandler() { // from class: io.flutter.embedding.engine.systemchannels.PlatformChannel.1
            /* JADX WARN: Removed duplicated region for block: B:56:0x00da  */
            @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onMethodCall(@androidx.annotation.NonNull io.flutter.plugin.common.MethodCall r6, @androidx.annotation.NonNull io.flutter.plugin.common.MethodChannel.Result r7) throws org.json.JSONException {
                /*
                    Method dump skipped, instructions count: 756
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: io.flutter.embedding.engine.systemchannels.PlatformChannel.AnonymousClass1.onMethodCall(io.flutter.plugin.common.MethodCall, io.flutter.plugin.common.MethodChannel$Result):void");
            }
        };
        this.parsingMethodCallHandler = methodCallHandler;
        MethodChannel methodChannel = new MethodChannel(dartExecutor, "flutter/platform", JSONMethodCodec.INSTANCE);
        this.channel = methodChannel;
        methodChannel.setMethodCallHandler(methodCallHandler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public AppSwitcherDescription decodeAppSwitcherDescription(@NonNull JSONObject jSONObject) throws JSONException {
        int i2 = jSONObject.getInt("primaryColor");
        if (i2 != 0) {
            i2 |= -16777216;
        }
        return new AppSwitcherDescription(i2, jSONObject.getString("label"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:35:0x004f A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int decodeOrientations(@androidx.annotation.NonNull org.json.JSONArray r8) throws org.json.JSONException, java.lang.NoSuchFieldException {
        /*
            r7 = this;
            r0 = 0
            r1 = r0
            r2 = r1
            r3 = r2
        L4:
            int r4 = r8.length()
            r5 = 2
            r6 = 1
            if (r1 >= r4) goto L33
            java.lang.String r4 = r8.getString(r1)
            io.flutter.embedding.engine.systemchannels.PlatformChannel$DeviceOrientation r4 = io.flutter.embedding.engine.systemchannels.PlatformChannel.DeviceOrientation.fromValue(r4)
            int r4 = r4.ordinal()
            if (r4 == 0) goto L2b
            if (r4 == r6) goto L28
            if (r4 == r5) goto L25
            r5 = 3
            if (r4 == r5) goto L22
            goto L2d
        L22:
            r2 = r2 | 8
            goto L2d
        L25:
            r2 = r2 | 2
            goto L2d
        L28:
            r2 = r2 | 4
            goto L2d
        L2b:
            r2 = r2 | 1
        L2d:
            if (r3 != 0) goto L30
            r3 = r2
        L30:
            int r1 = r1 + 1
            goto L4
        L33:
            if (r2 == 0) goto L53
            r8 = 9
            r1 = 8
            switch(r2) {
                case 2: goto L52;
                case 3: goto L48;
                case 4: goto L47;
                case 5: goto L45;
                case 6: goto L48;
                case 7: goto L48;
                case 8: goto L44;
                case 9: goto L48;
                case 10: goto L41;
                case 11: goto L40;
                case 12: goto L48;
                case 13: goto L48;
                case 14: goto L48;
                case 15: goto L3d;
                default: goto L3c;
            }
        L3c:
            goto L4f
        L3d:
            r8 = 13
            return r8
        L40:
            return r5
        L41:
            r8 = 11
            return r8
        L44:
            return r1
        L45:
            r8 = 12
        L47:
            return r8
        L48:
            if (r3 == r5) goto L52
            r0 = 4
            if (r3 == r0) goto L51
            if (r3 == r1) goto L50
        L4f:
            return r6
        L50:
            return r1
        L51:
            return r8
        L52:
            return r0
        L53:
            r8 = -1
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: io.flutter.embedding.engine.systemchannels.PlatformChannel.decodeOrientations(org.json.JSONArray):int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public SystemChromeStyle decodeSystemChromeStyle(@NonNull JSONObject jSONObject) throws JSONException, NoSuchFieldException {
        return new SystemChromeStyle(!jSONObject.isNull("statusBarColor") ? Integer.valueOf(jSONObject.getInt("statusBarColor")) : null, !jSONObject.isNull("statusBarIconBrightness") ? Brightness.fromValue(jSONObject.getString("statusBarIconBrightness")) : null, !jSONObject.isNull("systemStatusBarContrastEnforced") ? Boolean.valueOf(jSONObject.getBoolean("systemStatusBarContrastEnforced")) : null, !jSONObject.isNull("systemNavigationBarColor") ? Integer.valueOf(jSONObject.getInt("systemNavigationBarColor")) : null, !jSONObject.isNull("systemNavigationBarIconBrightness") ? Brightness.fromValue(jSONObject.getString("systemNavigationBarIconBrightness")) : null, !jSONObject.isNull("systemNavigationBarDividerColor") ? Integer.valueOf(jSONObject.getInt("systemNavigationBarDividerColor")) : null, jSONObject.isNull("systemNavigationBarContrastEnforced") ? null : Boolean.valueOf(jSONObject.getBoolean("systemNavigationBarContrastEnforced")));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public SystemUiMode decodeSystemUiMode(@NonNull String str) throws JSONException, NoSuchFieldException {
        int iOrdinal = SystemUiMode.fromValue(str).ordinal();
        return iOrdinal != 0 ? iOrdinal != 1 ? iOrdinal != 2 ? iOrdinal != 3 ? SystemUiMode.EDGE_TO_EDGE : SystemUiMode.EDGE_TO_EDGE : SystemUiMode.IMMERSIVE_STICKY : SystemUiMode.IMMERSIVE : SystemUiMode.LEAN_BACK;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public List<SystemUiOverlay> decodeSystemUiOverlays(@NonNull JSONArray jSONArray) throws JSONException, NoSuchFieldException {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            int iOrdinal = SystemUiOverlay.fromValue(jSONArray.getString(i2)).ordinal();
            if (iOrdinal == 0) {
                arrayList.add(SystemUiOverlay.TOP_OVERLAYS);
            } else if (iOrdinal == 1) {
                arrayList.add(SystemUiOverlay.BOTTOM_OVERLAYS);
            }
        }
        return arrayList;
    }

    public void setPlatformMessageHandler(@Nullable PlatformMessageHandler platformMessageHandler) {
        this.platformMessageHandler = platformMessageHandler;
    }

    public void systemChromeChanged(boolean z2) {
        Log.v(TAG, "Sending 'systemUIChange' message.");
        this.channel.invokeMethod("SystemChrome.systemUIChange", Arrays.asList(Boolean.valueOf(z2)));
    }
}
