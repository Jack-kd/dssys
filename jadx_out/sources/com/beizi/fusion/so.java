package com.beizi.fusion;

import android.graphics.Rect;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import com.umeng.analytics.pro.bv;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;
import java.util.zip.GZIPOutputStream;
import org.fourthline.cling.model.ServiceReference;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public abstract class so {
    private static String a(String str) throws IOException {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(str.getBytes());
            gZIPOutputStream.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.flush();
            byteArrayOutputStream.close();
            return Base64.encodeToString(byteArray, 2);
        } catch (Exception unused) {
            return "";
        }
    }

    public static boolean b(String str) {
        return str == null || str.length() == 0;
    }

    public static String c(String str) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
            for (byte b3 : bArrDigest) {
                int i2 = b3 & 255;
                if (i2 < 16) {
                    sb.append("0");
                }
                sb.append(Integer.toHexString(i2));
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("UnsupportedEncodingException", e2);
        } catch (NoSuchAlgorithmException e3) {
            throw new RuntimeException("NoSuchAlgorithmException", e3);
        }
    }

    public static long d(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Long.parseLong(str);
            } catch (NumberFormatException unused) {
            }
        }
        return 0L;
    }

    public static boolean b(View view) {
        if (view != null && view.getVisibility() == 0 && view.getParent() != null) {
            try {
                Rect rect = new Rect();
                if (!view.getGlobalVisibleRect(rect)) {
                    return false;
                }
                int iHeight = rect.height() * rect.width();
                int height = view.getHeight() * view.getWidth();
                if (height > 0 && iHeight * 100 >= height * 50) {
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static boolean c(View view) {
        if (view != null && view.getVisibility() == 0 && view.getParent() != null && view.hasWindowFocus()) {
            try {
                Rect rect = new Rect();
                if (!view.getGlobalVisibleRect(rect)) {
                    return false;
                }
                int iHeight = rect.height() * rect.width();
                int height = view.getHeight() * view.getWidth();
                if (height > 0 && iHeight * 100 >= height * 50) {
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static String a(int i2, View view, String str) throws JSONException, IOException {
        if (!TextUtils.isEmpty(str)) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("viewSecond", String.valueOf(i2));
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(bv.aI, String.valueOf(view.getTop()));
                jSONObject2.put("l", String.valueOf(view.getLeft()));
                jSONObject2.put("w", String.valueOf(view.getWidth()));
                jSONObject2.put("h", String.valueOf(view.getHeight()));
                jSONObject2.put("a", String.valueOf(view.getAlpha()));
                jSONObject2.put("v", String.valueOf(b(view)));
                jSONObject2.put("s", String.valueOf(a(view)));
                jSONObject.put("pos", jSONObject2);
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("w", wo.c(view.getContext()));
                jSONObject3.put("h", wo.b(view.getContext()));
                jSONObject3.put("o", wo.f(view.getContext()));
                jSONObject.put("screen", jSONObject3);
                jSONObject.put("spaces", new JSONArray());
                nh.a("adscope", "webView:" + jSONObject.toString());
                return str.replace(".UTC_TS.", String.valueOf(System.currentTimeMillis())).replace("__VT__", a(jSONObject.toString()).replace("+", "-").replace(ServiceReference.DELIMITER, "_").replace("=", com.anythink.core.common.d.i.f2495E));
            } catch (JSONException unused) {
            }
        }
        return str;
    }

    public static String a(View view, String str) throws JSONException, IOException {
        if (!TextUtils.isEmpty(str) && view != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("viewSecond", String.valueOf(0));
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(bv.aI, String.valueOf(view.getTop()));
                jSONObject2.put("l", String.valueOf(view.getLeft()));
                jSONObject2.put("w", String.valueOf(view.getWidth()));
                jSONObject2.put("h", String.valueOf(view.getHeight()));
                jSONObject2.put("a", String.valueOf(view.getAlpha()));
                jSONObject2.put("v", String.valueOf(b(view)));
                jSONObject2.put("s", String.valueOf(a(view)));
                jSONObject.put("pos", jSONObject2);
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("w", wo.c(view.getContext()));
                jSONObject3.put("h", wo.b(view.getContext()));
                jSONObject3.put("o", wo.f(view.getContext()));
                jSONObject.put("screen", jSONObject3);
                jSONObject.put("spaces", new JSONArray());
                nh.a("adscope", "webView:" + jSONObject.toString());
                return str.replace(".UTC_TS.", String.valueOf(System.currentTimeMillis())).replace("__VT__", a(jSONObject.toString()).replace("+", "-").replace(ServiceReference.DELIMITER, "_").replace("=", com.anythink.core.common.d.i.f2495E));
            } catch (JSONException unused) {
            }
        }
        return str;
    }

    private static boolean a(View view) {
        if (view != null && view.getParent() != null) {
            try {
                Rect rect = new Rect();
                boolean globalVisibleRect = view.getGlobalVisibleRect(rect);
                boolean z2 = rect.bottom - rect.top >= view.getMeasuredHeight();
                boolean z3 = rect.right - rect.left >= view.getMeasuredWidth();
                if (!globalVisibleRect || !z2 || !z3) {
                    return true;
                }
                View view2 = view;
                while (view2.getParent() instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view2.getParent();
                    if (viewGroup.getVisibility() != 0) {
                        return true;
                    }
                    for (int iA = a(view2, viewGroup) + 1; iA < viewGroup.getChildCount(); iA++) {
                        Rect rect2 = new Rect();
                        view.getGlobalVisibleRect(rect2);
                        View childAt = viewGroup.getChildAt(iA);
                        Rect rect3 = new Rect();
                        childAt.getGlobalVisibleRect(rect3);
                        if (Rect.intersects(rect2, rect3)) {
                            return true;
                        }
                    }
                    view2 = viewGroup;
                }
                return false;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private static int a(View view, ViewGroup viewGroup) {
        int i2 = 0;
        while (i2 < viewGroup.getChildCount() && viewGroup.getChildAt(i2) != view) {
            i2++;
        }
        return i2;
    }

    public static String a() {
        String strC = c(UUID.randomUUID().toString());
        nh.a("lance", "createRequestId:" + strC);
        return strC;
    }
}
