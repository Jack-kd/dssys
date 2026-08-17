package com.fl.saas.adx.oaid;

import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes3.dex */
public final class DeviceIdentifier {
    private static volatile String androidId = null;
    private static volatile String clientId = null;
    private static volatile String guid = null;
    private static volatile String imei = null;
    private static volatile String oaid = null;
    private static volatile String pseudoId = null;
    private static volatile boolean registered = false;
    private static volatile String widevineId;

    private DeviceIdentifier() {
    }

    public static String getAndroidID(Context context) {
        if (androidId == null) {
            synchronized (DeviceIdentifier.class) {
                try {
                    if (androidId == null) {
                        androidId = DeviceID.getAndroidID(context);
                    }
                } finally {
                }
            }
        }
        if (androidId == null) {
            androidId = "";
        }
        return androidId;
    }

    public static String getClientId() {
        if (TextUtils.isEmpty(clientId)) {
            synchronized (DeviceIdentifier.class) {
                try {
                    if (TextUtils.isEmpty(clientId)) {
                        clientId = DeviceID.getClientIdMD5();
                    }
                } finally {
                }
            }
        }
        if (clientId == null) {
            clientId = "";
        }
        return clientId;
    }

    public static String getGUID(Context context) {
        if (guid == null) {
            synchronized (DeviceIdentifier.class) {
                try {
                    if (guid == null) {
                        guid = DeviceID.getGUID(context);
                    }
                } finally {
                }
            }
        }
        if (guid == null) {
            guid = "";
        }
        return guid;
    }

    public static String getIMEI(Context context) {
        if (imei == null) {
            synchronized (DeviceIdentifier.class) {
                try {
                    if (imei == null) {
                        imei = DeviceID.getUniqueID(context);
                    }
                } finally {
                }
            }
        }
        if (imei == null) {
            imei = "";
        }
        return imei;
    }

    public static String getOAID(Context context) {
        if (TextUtils.isEmpty(oaid)) {
            synchronized (DeviceIdentifier.class) {
                try {
                    if (TextUtils.isEmpty(oaid)) {
                        oaid = DeviceID.getOAID();
                        if (oaid == null || oaid.length() == 0) {
                            DeviceID.getOAID(context, new IGetter() { // from class: com.fl.saas.adx.oaid.DeviceIdentifier.1
                                @Override // com.fl.saas.adx.oaid.IGetter
                                public void onOAIDGetComplete(String str) {
                                    String unused = DeviceIdentifier.oaid = str;
                                }

                                @Override // com.fl.saas.adx.oaid.IGetter
                                public void onOAIDGetError(Throwable th) {
                                    String unused = DeviceIdentifier.oaid = "";
                                }
                            });
                        }
                    }
                } finally {
                }
            }
        }
        if (oaid == null) {
            oaid = "";
        }
        return oaid;
    }

    public static String getPseudoID() {
        if (pseudoId == null) {
            synchronized (DeviceIdentifier.class) {
                try {
                    if (pseudoId == null) {
                        pseudoId = DeviceID.getPseudoID();
                    }
                } finally {
                }
            }
        }
        if (pseudoId == null) {
            pseudoId = "";
        }
        return pseudoId;
    }

    public static String getWidevineID() {
        if (widevineId == null) {
            synchronized (DeviceIdentifier.class) {
                try {
                    if (widevineId == null) {
                        widevineId = DeviceID.getWidevineID();
                    }
                } finally {
                }
            }
        }
        if (widevineId == null) {
            widevineId = "";
        }
        return widevineId;
    }

    public static void register(Context context) {
        if (registered) {
            return;
        }
        synchronized (DeviceIdentifier.class) {
            try {
                if (!registered) {
                    DeviceID.register(context);
                    registered = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
