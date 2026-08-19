package com.byazt.zw;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import com.byazt.lc.q;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.pangle.util.FieldUtils;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO, 28})
/* loaded from: classes3.dex */
public final class hp {
    public static final jx hp;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO, MediaPlayer.MEDIA_PLAYER_ADAPTIVE_WORK_AROUND_MODE})
    public static class j extends C0440hp {
        private j() {
            super();
        }

        @Override // com.byazt.zw.hp.C0440hp, com.byazt.zw.hp.jx
        public boolean hp(Context context) throws Throwable {
            Object objHp = hp(context, "mWhiteList");
            if (!(objHp instanceof List)) {
                return false;
            }
            ((List) objHp).add(context.getPackageName());
            return true;
        }
    }

    public interface jx {
        boolean hp(Context context) throws Throwable;
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO, 255})
    public static class l extends w {
        private l() {
            super();
        }

        @Override // com.byazt.zw.hp.w, com.byazt.zw.hp.C0440hp, com.byazt.zw.hp.jx
        public boolean hp(Context context) throws Throwable {
            return false;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO, MediaPlayer.MEDIA_PLAYER_OPTION_PRE_DECODE_AUTO_PAUSE})
    public static class w extends C0440hp {
        private w() {
            super();
        }

        @Override // com.byazt.zw.hp.C0440hp, com.byazt.zw.hp.jx
        public boolean hp(Context context) throws Throwable {
            Object objHp = hp(context, "mWhiteListMap");
            if (!(objHp instanceof Map)) {
                return false;
            }
            Map map = (Map) objHp;
            List arrayList = (List) map.get(0);
            if (arrayList == null) {
                arrayList = new ArrayList();
                map.put(0, arrayList);
            }
            arrayList.add(context.getPackageName());
            return true;
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 26) {
            hp = new j();
        } else if (i2 < 28) {
            hp = new w();
        } else {
            hp = new l();
        }
    }

    public static void hp(Application application) {
        if (application != null) {
            try {
                if (q.ec()) {
                    hp.hp(application.getBaseContext());
                }
            } catch (Throwable unused) {
            }
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO, 170})
    /* renamed from: com.byazt.zw.hp$hp, reason: collision with other inner class name */
    public static class C0440hp implements jx {
        private C0440hp() {
        }

        private Object l(Context context) {
            Field field;
            Object field2;
            try {
                Field field3 = FieldUtils.getField(Class.forName("android.app.LoadedApk"), "mReceiverResource");
                if (field3 == null || (field = FieldUtils.getField(Class.forName("android.app.ContextImpl"), "mPackageInfo")) == null || (field2 = FieldUtils.readField(field, context)) == null) {
                    return null;
                }
                return FieldUtils.readField(field3, field2);
            } catch (Throwable unused) {
                return null;
            }
        }

        @Override // com.byazt.zw.hp.jx
        public boolean hp(Context context) throws Throwable {
            Object objL = l(context);
            Object objHp = hp(objL, "mWhiteList");
            if (!(objHp instanceof String[])) {
                if (objL == null) {
                    return false;
                }
                FieldUtils.writeField(objL, "mResourceConfig", (Object) null);
                return false;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(context.getPackageName());
            Collections.addAll(arrayList, (String[]) objHp);
            FieldUtils.writeField(objL, "mWhiteList", arrayList.toArray(new String[arrayList.size()]));
            return true;
        }

        public Object hp(Context context, String str) {
            return hp(l(context), str);
        }

        private Object hp(Object obj, String str) {
            if (obj == null) {
                return null;
            }
            try {
                return FieldUtils.readField(obj, str);
            } catch (Throwable unused) {
                return null;
            }
        }
    }
}
