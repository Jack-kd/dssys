package com.byazt.ktf;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.sdk.openadsdk.ITTProvider;

@com.byazt.kj.hp(hp = {0, 1, 959, 38})
/* loaded from: classes.dex */
public class j {

    public interface hp {
        int delete(Uri uri, String str, String[] strArr);

        String getTableName();

        String getType(Uri uri);

        void init();

        void injectContext(Context context);

        Uri insert(Uri uri, ContentValues contentValues);

        Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2);

        int update(Uri uri, ContentValues contentValues, String str, String[] strArr);
    }

    @com.byazt.kj.hp(hp = {0, 1, 959, 661})
    public static class jx implements ITTProvider, hp {
        public hp hp;

        public jx(hp hpVar) {
            this.hp = hpVar;
        }

        @Override // com.bytedance.sdk.openadsdk.ITTProvider, com.byazt.ktf.j.hp
        public int delete(Uri uri, String str, String[] strArr) {
            hp hpVar = this.hp;
            if (hpVar != null) {
                return hpVar.delete(uri, str, strArr);
            }
            return 0;
        }

        @Override // com.bytedance.sdk.openadsdk.ITTProvider, com.byazt.ktf.j.hp
        public String getTableName() {
            hp hpVar = this.hp;
            if (hpVar != null) {
                return hpVar.getTableName();
            }
            return null;
        }

        @Override // com.bytedance.sdk.openadsdk.ITTProvider, com.byazt.ktf.j.hp
        public String getType(Uri uri) {
            hp hpVar = this.hp;
            if (hpVar != null) {
                return hpVar.getType(uri);
            }
            return null;
        }

        @Override // com.bytedance.sdk.openadsdk.ITTProvider, com.byazt.ktf.j.hp
        public void init() {
            hp hpVar = this.hp;
            if (hpVar != null) {
                hpVar.init();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.ITTProvider, com.byazt.ktf.j.hp
        public void injectContext(Context context) {
            hp hpVar = this.hp;
            if (hpVar != null) {
                hpVar.injectContext(context);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.ITTProvider, com.byazt.ktf.j.hp
        public Uri insert(Uri uri, ContentValues contentValues) {
            hp hpVar = this.hp;
            if (hpVar != null) {
                return hpVar.insert(uri, contentValues);
            }
            return null;
        }

        @Override // com.bytedance.sdk.openadsdk.ITTProvider, com.byazt.ktf.j.hp
        public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
            hp hpVar = this.hp;
            if (hpVar != null) {
                return hpVar.query(uri, strArr, str, strArr2, str2);
            }
            return null;
        }

        @Override // com.bytedance.sdk.openadsdk.ITTProvider, com.byazt.ktf.j.hp
        public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
            hp hpVar = this.hp;
            if (hpVar != null) {
                return hpVar.update(uri, contentValues, str, strArr);
            }
            return 0;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 959, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SWITCH_CACHE_TIME})
    public static class l extends com.byazt.hde.j implements hp {
        public hp hp;

        public l(hp hpVar) {
            this.hp = hpVar;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.byazt.hde.j
        public <T> T applyFunction(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
            T t2 = (T) 0;
            switch (i2) {
                case -7999907:
                    return this.hp != null ? (T) Integer.valueOf(update((Uri) pluginValueSet.objectValue(-7999921, Uri.class), (ContentValues) pluginValueSet.objectValue(-7999922, ContentValues.class), pluginValueSet.stringValue(-7999923, null), (String[]) pluginValueSet.objectValue(-7999924, String[].class))) : t2;
                case -7999906:
                    return this.hp != null ? (T) Integer.valueOf(delete((Uri) pluginValueSet.objectValue(-7999921, Uri.class), pluginValueSet.stringValue(-7999923, null), (String[]) pluginValueSet.objectValue(-7999924, String[].class))) : t2;
                case -7999905:
                    if (this.hp != null) {
                        return (T) insert((Uri) pluginValueSet.objectValue(-7999921, Uri.class), (ContentValues) pluginValueSet.objectValue(-7999922, ContentValues.class));
                    }
                    return null;
                case -7999904:
                    if (this.hp != null) {
                        return (T) query((Uri) pluginValueSet.objectValue(-7999921, Uri.class), (String[]) pluginValueSet.objectValue(-7999922, String[].class), pluginValueSet.stringValue(-7999923, null), (String[]) pluginValueSet.objectValue(-7999924, String[].class), pluginValueSet.stringValue(-7999925, null));
                    }
                    return null;
                case -7999903:
                    if (this.hp != null) {
                        return (T) getType((Uri) pluginValueSet.objectValue(-7999921, Uri.class));
                    }
                    return null;
                case -7999902:
                    init();
                    return null;
                case -7999901:
                    return (T) getTableName();
                case -7999900:
                    if (this.hp != null) {
                        injectContext((Context) pluginValueSet.objectValue(-7999920, Context.class));
                    }
                    return null;
                default:
                    return null;
            }
        }

        @Override // com.byazt.ktf.j.hp
        public int delete(Uri uri, String str, String[] strArr) {
            hp hpVar = this.hp;
            if (hpVar != null) {
                return hpVar.delete(uri, str, strArr);
            }
            return 0;
        }

        @Override // com.byazt.ktf.j.hp
        public String getTableName() {
            hp hpVar = this.hp;
            if (hpVar != null) {
                return hpVar.getTableName();
            }
            return null;
        }

        @Override // com.byazt.ktf.j.hp
        public String getType(Uri uri) {
            hp hpVar = this.hp;
            if (hpVar != null) {
                return hpVar.getType(uri);
            }
            return null;
        }

        @Override // com.byazt.ktf.j.hp
        public void init() {
            hp hpVar = this.hp;
            if (hpVar != null) {
                hpVar.init();
            }
        }

        @Override // com.byazt.ktf.j.hp
        public void injectContext(Context context) {
            hp hpVar = this.hp;
            if (hpVar != null) {
                hpVar.injectContext(context);
            }
        }

        @Override // com.byazt.ktf.j.hp
        public Uri insert(Uri uri, ContentValues contentValues) {
            hp hpVar = this.hp;
            if (hpVar != null) {
                return hpVar.insert(uri, contentValues);
            }
            return null;
        }

        @Override // com.byazt.ktf.j.hp
        public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
            hp hpVar = this.hp;
            if (hpVar != null) {
                return hpVar.query(uri, strArr, str, strArr2, str2);
            }
            return null;
        }

        @Override // com.byazt.ktf.j.hp
        public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
            hp hpVar = this.hp;
            if (hpVar != null) {
                return hpVar.update(uri, contentValues, str, strArr);
            }
            return 0;
        }
    }

    public static Object hp(hp hpVar, Class cls, Bundle bundle) {
        if (hp(bundle)) {
            return new l(hpVar);
        }
        if (hp(cls)) {
            return new jx(hpVar);
        }
        return null;
    }

    public static boolean hp(Class cls, Bundle bundle) {
        if (cls == null) {
            return false;
        }
        return hp(cls) || hp(bundle);
    }

    private static boolean hp(Class cls) {
        return cls != null && "com.bytedance.sdk.openadsdk.ITTProvider".equals(cls.getName());
    }

    private static boolean hp(Bundle bundle) {
        return bundle != null && bundle.getBoolean("proto2_ittprovider");
    }
}
