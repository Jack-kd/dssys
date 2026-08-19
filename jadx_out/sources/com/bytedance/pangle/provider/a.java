package com.bytedance.pangle.provider;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import androidx.annotation.Keep;
import androidx.annotation.RequiresApi;
import com.byazt.lc.e;
import com.byazt.yt.hp;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.ZeusLogger;
import java.io.File;

@Keep
/* loaded from: classes3.dex */
public class a {
    private static Uri a(String str, Uri uri) {
        return a(str, uri, (String) null);
    }

    public static int b(ContentResolver contentResolver, Uri uri, ContentValues contentValues, Bundle bundle, String str) {
        if (contentResolver == null) {
            return 0;
        }
        try {
            try {
                return contentResolver.update(a(uri, str), contentValues, bundle);
            } catch (Throwable th) {
                ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "ContentProviderManager#update throw exception:", th);
                return 0;
            }
        } catch (IllegalArgumentException unused) {
            ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "not found plugin provider, but found host ContentResolver execute update !!!");
            return contentResolver.update(uri, contentValues, bundle);
        } catch (Exception e2) {
            e = e2;
            ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "ContentProviderManager#update throw exception:", e);
            return 0;
        } catch (IncompatibleClassChangeError e3) {
            e = e3;
            ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "ContentProviderManager#update throw exception:", e);
            return 0;
        }
    }

    private static Uri a(String str, Uri uri, String str2) {
        ContentProviderManager contentProviderManager = ContentProviderManager.getInstance();
        if (uri != null) {
            str2 = uri.getAuthority();
        }
        String pluginProcessNameByAuthority = contentProviderManager.getPluginProcessNameByAuthority(str2);
        String strHp = e.hp(hp.hp(pluginProcessNameByAuthority, str, uri));
        return Uri.parse("content://" + ContentProviderManager.getInstance().getSystemProviderInfoMap().get(pluginProcessNameByAuthority).f28844l + File.separator + "proxy?provider_params=" + strHp);
    }

    @RequiresApi(api = 16)
    public static Cursor a(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal, String str3) {
        if (contentResolver == null) {
            return null;
        }
        try {
            try {
                return contentResolver.query(a(uri, str3), strArr, str, strArr2, str2, cancellationSignal);
            } catch (Throwable th) {
                ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "not found host provider-ContentProviderManager#query(6 params) throw exception:", th);
                return null;
            }
        } catch (IllegalArgumentException unused) {
            ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "not found plugin provider, but found host ContentResolver execute query(6 params) !!!");
            return contentResolver.query(uri, strArr, str, strArr2, str2, cancellationSignal);
        } catch (Exception e2) {
            e = e2;
            ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "ContentProviderManager#query(6 params) throw exception:", e);
            return null;
        } catch (IncompatibleClassChangeError e3) {
            e = e3;
            ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "ContentProviderManager#query(6 params) throw exception:", e);
            return null;
        }
    }

    @RequiresApi(api = 26)
    public static Cursor a(ContentResolver contentResolver, Uri uri, String[] strArr, Bundle bundle, CancellationSignal cancellationSignal, String str) {
        if (contentResolver == null) {
            return null;
        }
        try {
            try {
                return contentResolver.query(a(uri, str), strArr, bundle, cancellationSignal);
            } catch (Throwable th) {
                ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "not found host provider-ContentProviderManager#query(4 params) throw exception:", th);
                return null;
            }
        } catch (IllegalArgumentException unused) {
            ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "not found plugin provider, but found host ContentResolver execute query(5 params) !!!");
            return contentResolver.query(uri, strArr, bundle, cancellationSignal);
        } catch (Exception e2) {
            e = e2;
            ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "ContentProviderManager#query(4 params) throw exception:", e);
            return null;
        } catch (IncompatibleClassChangeError e3) {
            e = e3;
            ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "ContentProviderManager#query(4 params) throw exception:", e);
            return null;
        }
    }

    public static Cursor a(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2, String str3) {
        ContentResolver contentResolver2;
        String str4;
        String[] strArr3;
        String str5;
        String[] strArr4;
        if (contentResolver == null) {
            return null;
        }
        try {
            try {
                contentResolver2 = contentResolver;
            } catch (IllegalArgumentException unused) {
                contentResolver2 = contentResolver;
                str4 = str2;
                strArr3 = strArr2;
                str5 = str;
                strArr4 = strArr;
            }
            try {
                return contentResolver2.query(a(uri, str3), strArr, str, strArr2, str2);
            } catch (IllegalArgumentException unused2) {
                strArr4 = strArr;
                str5 = str;
                strArr3 = strArr2;
                str4 = str2;
                try {
                    ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "not found plugin provider, but found host ContentResolver execute query(5 params) !!!");
                    return contentResolver2.query(uri, strArr4, str5, strArr3, str4);
                } catch (Throwable th) {
                    ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "not found host provider-ContentProviderManager#query(5 params) throw exception:", th);
                    return null;
                }
            }
        } catch (Exception e2) {
            ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "ContentProviderManager#query(5 params) throw exception:", e2);
            return null;
        }
    }

    public static String a(ContentResolver contentResolver, Uri uri, String str) {
        if (contentResolver == null) {
            return null;
        }
        try {
            try {
                return contentResolver.getType(a(uri, str));
            } catch (Throwable th) {
                ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "not found host provider-ContentProviderManager#getType throw exception:", th);
                return null;
            }
        } catch (IllegalArgumentException unused) {
            ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "not found plugin provider, but found host ContentResolver execute getType !!!");
            return contentResolver.getType(uri);
        } catch (Exception e2) {
            ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "ContentProviderManager#getType throw exception:", e2);
            return null;
        }
    }

    public static Uri a(ContentResolver contentResolver, Uri uri, ContentValues contentValues, String str) {
        if (contentResolver == null) {
            return null;
        }
        try {
            try {
                return contentResolver.insert(a(uri, str), contentValues);
            } catch (Throwable th) {
                ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "not found host provider-ContentProviderManager#insert throw exception:", th);
                return null;
            }
        } catch (IllegalArgumentException unused) {
            ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "not found plugin provider, but found host ContentResolver execute insert !!!");
            return contentResolver.insert(uri, contentValues);
        } catch (Exception e2) {
            ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "ContentProviderManager#insert throw exception:", e2);
            return null;
        }
    }

    public static Uri a(ContentResolver contentResolver, Uri uri, ContentValues contentValues, Bundle bundle, String str) {
        if (contentResolver == null) {
            return null;
        }
        try {
            try {
                return contentResolver.insert(a(uri, str), contentValues, bundle);
            } catch (Throwable th) {
                ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "not found host provider-ContentProviderManager#insert throw exception:", th);
                return null;
            }
        } catch (IllegalArgumentException unused) {
            ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "not found plugin provider, but found host ContentResolver execute insert !!!");
            return contentResolver.insert(uri, contentValues, bundle);
        } catch (Exception e2) {
            e = e2;
            ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "ContentProviderManager#insert throw exception:", e);
            return null;
        } catch (IncompatibleClassChangeError e3) {
            e = e3;
            ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "ContentProviderManager#insert throw exception:", e);
            return null;
        }
    }

    public static int a(ContentResolver contentResolver, Uri uri, String str, String[] strArr, String str2) {
        if (contentResolver == null) {
            return -1;
        }
        try {
            try {
                return contentResolver.delete(a(uri, str2), str, strArr);
            } catch (Throwable th) {
                ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "ContentProviderManager#delete throw exception:", th);
                return -1;
            }
        } catch (IllegalArgumentException unused) {
            ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "not found plugin provider, but found host ContentResolver execute delete !!!");
            return contentResolver.delete(uri, str, strArr);
        } catch (Exception e2) {
            ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "ContentProviderManager#delete throw exception:", e2);
            return -1;
        }
    }

    public static int a(ContentResolver contentResolver, Uri uri, Bundle bundle, String str) {
        if (contentResolver == null) {
            return -1;
        }
        try {
            try {
                return contentResolver.delete(a(uri, str), bundle);
            } catch (Throwable th) {
                ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "ContentProviderManager#delete throw exception:", th);
                return -1;
            }
        } catch (IllegalArgumentException unused) {
            ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "not found plugin provider, but found host ContentResolver execute delete !!!");
            return contentResolver.delete(uri, bundle);
        } catch (Exception e2) {
            e = e2;
            ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "ContentProviderManager#delete throw exception:", e);
            return -1;
        } catch (IncompatibleClassChangeError e3) {
            e = e3;
            ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "ContentProviderManager#delete throw exception:", e);
            return -1;
        }
    }

    public static int a(ContentResolver contentResolver, Uri uri, ContentValues contentValues, String str, String[] strArr, String str2) {
        if (contentResolver == null) {
            return 0;
        }
        try {
            try {
                return contentResolver.update(a(uri, str2), contentValues, str, strArr);
            } catch (Throwable th) {
                ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "ContentProviderManager#update throw exception:", th);
                return 0;
            }
        } catch (IllegalArgumentException unused) {
            ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "not found plugin provider, but found host ContentResolver execute update !!!");
            return contentResolver.update(uri, contentValues, str, strArr);
        } catch (Exception e2) {
            ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "ContentProviderManager#update throw exception:", e2);
            return 0;
        }
    }

    public static Bundle a(ContentResolver contentResolver, Uri uri, String str, String str2, Bundle bundle, String str3) {
        if (contentResolver != null && uri != null) {
            try {
                try {
                    Uri uriA = a(uri, str3);
                    if (bundle == null) {
                        bundle = new Bundle();
                    }
                    bundle.putString("provider_params", uri.getAuthority());
                    bundle.putString(ContentProviderManager.PROVIDER_PROXY_URI, uriA.toString());
                    return contentResolver.call(uriA, str, str2, bundle);
                } catch (Throwable th) {
                    ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "ContentProviderManager#call throw exception:", th);
                }
            } catch (IllegalArgumentException unused) {
                ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "not found plugin provider, but found host ContentResolver execute call !!!");
                return contentResolver.call(uri, str, str2, bundle);
            } catch (Exception e2) {
                e = e2;
                ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "ContentProviderManager#call throw exception:", e);
                return null;
            } catch (IncompatibleClassChangeError e3) {
                e = e3;
                ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "ContentProviderManager#call throw exception:", e);
                return null;
            }
        }
        return null;
    }

    public static Bundle a(ContentResolver contentResolver, String str, String str2, String str3, Bundle bundle, String str4) {
        if (contentResolver == null) {
            return null;
        }
        String str5 = ContentProviderManager.getInstance().getSystemProviderInfoMap().get(ContentProviderManager.getInstance().getPluginProcessNameByAuthority(str)).f28844l;
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putString("provider_params", str);
        bundle.putString(ContentProviderManager.PROVIDER_PROXY_URI, a(str4, (Uri) null, str).toString());
        try {
            try {
                return contentResolver.call(str5, str2, str3, bundle);
            } catch (Throwable th) {
                ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "ContentProviderManager#call throw exception:", th);
                return null;
            }
        } catch (IllegalArgumentException unused) {
            ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "not found plugin provider, but found host ContentResolver execute call !!!");
            return contentResolver.call(str, str2, str3, bundle);
        } catch (Exception e2) {
            e = e2;
            ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "ContentProviderManager#call throw exception:", e);
            return null;
        } catch (IncompatibleClassChangeError e3) {
            e = e3;
            ZeusLogger.w(ZeusLogger.TAG_PROVIDER, "ContentProviderManager#call throw exception:", e);
            return null;
        }
    }

    public static Uri a(Uri uri, String str) {
        if (ContentProviderManager.getInstance().isPluginProvider(uri)) {
            return a(str, uri);
        }
        if (!uri.getAuthority().startsWith(Zeus.getAppApplication().getPackageName())) {
            return uri;
        }
        Uri uri2 = Uri.parse(uri.toString().replaceFirst(Zeus.getAppApplication().getPackageName(), str));
        return ContentProviderManager.getInstance().isPluginProvider(uri2) ? a(str, uri2) : uri;
    }
}
