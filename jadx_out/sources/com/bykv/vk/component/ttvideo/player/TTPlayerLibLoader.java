package com.bykv.vk.component.ttvideo.player;

import android.annotation.SuppressLint;
import com.byazt.dnb.eb;
import com.byazt.ymw.u;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class TTPlayerLibLoader {
    private static final int DEGRADED_VERSION = 2925;
    private static final String TAG = "TTPlayerLibLoader";
    private static ILibraryLoader mDebugLibraryLoader;
    private static ILibraryLoader mLibraryLoader;
    private static ILibraryLoader mDefaultLibLoader = new DefaultLibraryLoader();
    private static boolean mLibraryLoaded = false;
    private static boolean IsErrored = false;
    private static String mErrorInfo = null;
    private static int mVersion = 0;

    public static class DefaultLibraryLoader implements ILibraryLoader {
        private DefaultLibraryLoader() {
        }

        @Override // com.bykv.vk.component.ttvideo.player.ILibraryLoader
        public boolean onLoadNativeLibs(List<String> list) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                try {
                    eb.hp(it.next());
                    String unused = TTPlayerLibLoader.TAG;
                } catch (Throwable th) {
                    String unused2 = TTPlayerLibLoader.mErrorInfo = th.getMessage();
                    String unused3 = TTPlayerLibLoader.TAG;
                    String unused4 = TTPlayerLibLoader.mErrorInfo;
                    return false;
                }
            }
            return true;
        }
    }

    public static String getErrorInfo() {
        return mErrorInfo;
    }

    public static boolean isError() {
        return IsErrored;
    }

    public static final synchronized void loadLibrary() {
        try {
            if (mVersion == 0) {
                mVersion = TTPlayerConfiger.getValue(13, 0) / 1000;
            }
            if (!TTPlayerConfiger.getValue(3, false)) {
                new ArrayList().add("ttmplayer_lite");
                IsErrored = !loadLibs(r2, false);
            } else if (!loadPlayerlibrary("ttmplayer_lite")) {
                IsErrored = true;
            }
        } catch (Throwable th) {
            IsErrored = true;
            mErrorInfo = "load default library error." + th.toString();
        }
    }

    private static boolean loadLibs(List<String> list, boolean z2) {
        boolean z3 = mLibraryLoaded;
        if ((!z2) && z3) {
            return z3;
        }
        ILibraryLoader iLibraryLoader = mLibraryLoader;
        if (iLibraryLoader != null) {
            try {
                mLibraryLoaded = iLibraryLoader.onLoadNativeLibs(list);
            } catch (Throwable th) {
                mErrorInfo = th.getMessage();
            }
        } else {
            mLibraryLoaded = mDefaultLibLoader.onLoadNativeLibs(list);
        }
        return mLibraryLoaded;
    }

    @SuppressLint({"UnsafeDynamicallyLoadedCode"})
    private static boolean loadPlayerlibrary(String str) {
        String playerLibraryPath;
        try {
            TTPlayerConfiger.setLibraryName("lib" + str + ".so");
            TTPlayerConfiger.checkDebugTTPlayerLib();
            playerLibraryPath = TTPlayerConfiger.getPlayerLibraryPath();
            if (playerLibraryPath != null && !new File(playerLibraryPath).exists()) {
                playerLibraryPath = null;
            }
            if (playerLibraryPath != null) {
                if (mDebugLibraryLoader != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(playerLibraryPath);
                    mDebugLibraryLoader.onLoadNativeLibs(arrayList);
                } else {
                    System.load(playerLibraryPath);
                }
            }
        } catch (Throwable th) {
            mErrorInfo = "load path library error." + th.toString();
            playerLibraryPath = null;
        }
        if (playerLibraryPath == null) {
            try {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(str);
                loadLibs(arrayList2, true);
                mErrorInfo = null;
            } catch (Throwable unused) {
                u.l(TAG, "load lib failed name = ".concat(String.valueOf(str)));
                return false;
            }
        }
        return true;
    }

    public static final void setDebugLibraryLoader(ILibraryLoader iLibraryLoader) {
        mDebugLibraryLoader = iLibraryLoader;
    }

    public static final void setLibraryLoader(ILibraryLoader iLibraryLoader) {
        mLibraryLoader = iLibraryLoader;
    }
}
