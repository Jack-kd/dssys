package com.byazt.ij;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.SoftReference;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, 845, 38})
/* loaded from: classes.dex */
public class j {
    public static Map<Integer, SoftReference<Bitmap>> hp = new ConcurrentHashMap();
    public static String jx;

    /* renamed from: l, reason: collision with root package name */
    public static String f21121l;

    private static String hp() {
        try {
            if (f21121l == null) {
                f21121l = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEgAAAAcCAMAAAD1LAmUAAAAV1BMVEUUGSPo6Onk5OSWmJz09PRobHOztbekp6lDRk7s7e25u76Hio/g4OLV1thydXzw8fHJys3BwsWusLNaXmXj4+UAACrX2dmYmp4VGyUVHCPu7u7a2tzR0tKDGP4aAAAAHXRSTlMzuK1c1kdxZTzCdVSnl0zMhXxuRLAEmVwwJMGYj5jRgTUAAAEDSURBVDjL7dPbboQgEIDhGQcQxFUOe+i2ff/nLGxkC0g1bbzZpN+VMeZ3BiMc4n65wDHejgrBHY4aCV4a51CQEv7GdFlk5CA62CInWOtFYJkRURxEvMNOqD8PvYOawu5bCHE1KzUzFUGLPyEOA45THaJyarwSkUGKWls5jY8Q4iS3QtewVFqtudX4DGnjfg5J4pFF/gClKWyVhU5pv0aIWKF8iUWsQojgYVE8vP2tsBUaXQrV89OTrLZqhnDZjzMJBc66xUz5PMkthM43H668i6F4LyZohjpUnV5No03v9gazn+O3IanzQSHp7CokFtlq+3g6650z2idWk3+kq08N/17WFxmyCdKhvUIPAAAAAElFTkSuQmCC";
            }
        } catch (OutOfMemoryError unused) {
        }
        return f21121l;
    }

    private static String l() {
        try {
            if (jx == null) {
                jx = "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAcHBwcIBwgJCQgMDAsMDBEQDg4QERoSFBIUEhonGB0YGB0YJyMqIiAiKiM+MSsrMT5IPDk8SFdOTldtaG2Pj8ABBwcHBwgHCAkJCAwMCwwMERAODhARGhIUEhQSGicYHRgYHRgnIyoiICIqIz4xKysxPkg8OTxIV05OV21obY+PwP/CABEIACgAVgMBIgACEQEDEQH/xAAaAAACAwEBAAAAAAAAAAAAAAABBQACBAYD/9oACAEBAAAAAGVoCRYyo99mTO69Vb/AmPRNkaVmmZdDn5jQyv4Y7YPXohzUNYDBDb//xAAVAQEBAAAAAAAAAAAAAAAAAAAAAf/aAAgBAhAAAAALFiywX//EABUBAQEAAAAAAAAAAAAAAAAAAAAB/9oACAEDEAAAAIAAD//EACoQAAIBAwMDAwQDAQAAAAAAAAECAwAEEQUhURITQSIxcSMyUoEVocHR/9oACAEBAAE/AOd6FAmuaXzXj91zQoUdx8V00M+KtoXuJe2gyT/nNXWmSwTpEHV+oZzU9u0LlWo7AkUNJ7aI8l5EhZQ2Dwan02zLkwXsQUj2Y+alsiswjjlWUsRjp5NJoURmgRpkIx9T179XGKfR5k7hWWDAycde9CgmW9JydgB81pskdgkgmhZbhvsBH3A8U6Rw2zzzjrnl9h8+BVxaFUczoe62CB/ynikQlWUg+f3WsAGS2H426ZpfNadPHDP1sjHHt0++TUFtFFOLgabcmTkuKlsbRFknfTrgAbn10/aeR+lSE6jgHfFWM8VtcpNInWq+Pnijq8ct8s8kZKL9o80dYDXwuHTKDZU/HPn5q41Vprvvsh6QMIOBzTzC4nVnbCMwB+M1qcyzXspQgqoC55xXk1AfqJn8hn9Gr3+PkuJHOouucelQcCons4rO9Ed60paPZWz/AFQG5z71tRGK23oD3zvQwKzQzWa2rwaFf//EABQRAQAAAAAAAAAAAAAAAAAAAED/2gAIAQIBAT8AF//EABQRAQAAAAAAAAAAAAAAAAAAAED/2gAIAQMBAT8AF//Z";
            }
        } catch (OutOfMemoryError unused) {
        }
        return jx;
    }

    public static void hp(Context context, int i2, View view) {
        try {
            Bitmap bitmapHp = hp(i2);
            if (bitmapHp != null) {
                view.setBackground(new BitmapDrawable(context.getResources(), bitmapHp));
            }
        } catch (Exception e2) {
            e2.getMessage();
        }
    }

    private static String l(int i2) {
        if (i2 == 1) {
            return hp();
        }
        if (i2 == 2) {
            return l();
        }
        return null;
    }

    public static Bitmap hp(int i2) {
        Bitmap bitmap;
        Map<Integer, SoftReference<Bitmap>> map = hp;
        SoftReference<Bitmap> softReference = map == null ? null : map.get(Integer.valueOf(i2));
        if (softReference != null && (bitmap = softReference.get()) != null && !bitmap.isRecycled()) {
            return bitmap;
        }
        String strL = l(i2);
        if (TextUtils.isEmpty(strL)) {
            return null;
        }
        try {
            if (strL.startsWith("data:image/")) {
                strL = strL.substring(strL.indexOf(",") + 1);
            }
            byte[] bArrDecode = Base64.decode(strL, 0);
            Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
            bitmapDecodeByteArray.setDensity(MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
            hp.put(Integer.valueOf(i2), new SoftReference<>(bitmapDecodeByteArray));
            return bitmapDecodeByteArray;
        } catch (Exception | OutOfMemoryError unused) {
            return null;
        }
    }
}
