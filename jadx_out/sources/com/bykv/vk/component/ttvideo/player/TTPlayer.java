package com.bykv.vk.component.ttvideo.player;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Process;
import android.os.RemoteException;
import android.view.Surface;
import androidx.core.location.LocationRequestCompat;
import com.byazt.dnb.eb;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import java.util.Map;

@Keep
/* loaded from: classes3.dex */
public class TTPlayer {
    private static final String TAG = "TTPlayer";
    private static String mAppPath = null;
    private static String mCachePath = null;
    private static String mCrashPath = null;
    private static ILibraryLoader mDebugLibLoader = new DefaultLibraryLoader(true);
    private static boolean mIsIPCPlayer = false;
    private static boolean mSetLibraryLoader = false;
    private static int mSupportSampleRateNB;
    private static int[] mSupportSampleRates;
    private Context mContext;
    private FrameMetadataListener mFrameMetadataListener;
    private long mHandle;
    private long mId;

    @Keep
    private long mMediaDataSource;
    private IPlayerNotifyer mNotifyer;
    private MediaPlayer.OnScreenshotListener mScreenshotListener;
    private long mNotifyerState = LocationRequestCompat.PASSIVE_INTERVAL;
    private int mTracker = 0;

    public static class DefaultLibraryLoader implements ILibraryLoader {
        boolean mLoadLibraryPath;

        public DefaultLibraryLoader(boolean z2) {
            this.mLoadLibraryPath = z2;
        }

        @Override // com.bykv.vk.component.ttvideo.player.ILibraryLoader
        @SuppressLint({"UnsafeDynamicallyLoadedCode"})
        public boolean onLoadNativeLibs(List<String> list) {
            for (String str : list) {
                try {
                    if (this.mLoadLibraryPath) {
                        System.load(str);
                    } else {
                        eb.hp(str);
                    }
                } catch (Throwable th) {
                    u.l(TTPlayer.TAG, "load lib failed = " + th.getMessage());
                    return false;
                }
            }
            return true;
        }
    }

    static {
        synchronized (TTPlayer.class) {
            try {
                TTPlayerLibLoader.loadLibrary();
                try {
                    detectAudioFormat();
                } catch (UnsatisfiedLinkError e2) {
                    String errorInfo = TTPlayerLibLoader.getErrorInfo();
                    if (errorInfo == null) {
                        throw e2;
                    }
                    throw new UnsatisfiedLinkError(errorInfo);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public TTPlayer(Context context, long j2) throws Exception {
        this.mContext = context;
        create(j2);
    }

    private static final native void _close(long j2);

    private final native long _create(Context context, int i2, String str);

    private static final native String _getAppPath();

    private static final native int _getCurrentPosition(long j2);

    private static final native double _getDoubleValue(long j2, int i2, double d2);

    private static final native int _getDuration(long j2);

    private static final native float _getFloatValue(long j2, int i2, float f2);

    private static final native int _getIntValue(long j2, int i2, int i3);

    private static final native Object _getJObjectValue(long j2, int i2);

    private static final native long _getLongValue(long j2, int i2, long j3);

    private static final native String _getStringValue(long j2, int i2);

    private static final native int _getVideoHeight(long j2);

    private static final native int _getVideoWidth(long j2);

    private static final native int _isLooping(long j2);

    private static final native int _isPlaying(long j2);

    private static final native void _mouseEvent(long j2, int i2, int i3, int i4);

    private static final native int _pause(long j2);

    private static final native int _prepare(long j2);

    private static final native void _prevClose(long j2);

    private static final native void _registerPlayerInfo();

    private static final native void _release(long j2);

    private static final native int _reset(long j2);

    private static final native void _rotateCamera(long j2, float f2, float f3);

    private static final native int _seek(long j2, int i2);

    private static final native void _setAudioProcessor(long j2, AudioProcessor audioProcessor);

    private static final native void _setCacheFile(long j2, String str, int i2);

    private static final native void _setDataSource(long j2, IMediaDataSource iMediaDataSource);

    private static final native void _setDataSource(long j2, String str);

    private static final native void _setDataSourceFd(long j2, int i2);

    private static final native int _setDoubleValue(long j2, int i2, double d2);

    private static final native int _setFloatValue(long j2, int i2, float f2);

    private static final native int _setIntValue(long j2, int i2, int i3);

    private static final native void _setLoadControl(long j2, LoadControl loadControl);

    private static final native int _setLongValue(long j2, int i2, long j3);

    private static final native void _setLooping(long j2, int i2);

    private static final native void _setMaskInfo(long j2, MaskInfo maskInfo);

    private static final native void _setMediaTransport(long j2, MediaTransport mediaTransport);

    private static final native int _setStringValue(long j2, int i2, String str);

    private static final native void _setSubInfo(long j2, SubInfo subInfo);

    private static final native void _setSupportFormatNB(int i2);

    private static final native void _setSupprotSampleRates(int[] iArr, int i2);

    private static final native int _setSurfaceValue(long j2, long j3);

    private static final native int _setVideoSurface(long j2, Surface surface);

    private static final native void _setVolume(long j2, float f2, float f3);

    private static final native int _start(long j2);

    private static final native void _stop(long j2);

    private static final native void _switchStream(long j2, int i2, int i3);

    private static final native void _takeScreenshot(long j2);

    private static final void checkPlayerModel() {
    }

    private void create(long j2) throws Exception {
        this.mNotifyer = null;
        Context context = this.mContext;
        boolean z2 = mIsIPCPlayer;
        long j_create = _create(context, z2 ? 1 : 0, mAppPath);
        this.mHandle = j_create;
        this.mId = j2;
        if (j_create == 0) {
            throw new Exception("create native player is fail.");
        }
    }

    private static void detectAudioFormat() {
        if (mSupportSampleRateNB == 0) {
            int[] iArr = new int[AudioFormats.getDefaultSampleRatesNB()];
            mSupportSampleRates = iArr;
            int maxSupportedSampleRates = AudioFormats.getMaxSupportedSampleRates(iArr);
            mSupportSampleRateNB = maxSupportedSampleRates;
            _setSupprotSampleRates(mSupportSampleRates, maxSupportedSampleRates);
        }
    }

    public static final String getAppPath() {
        return mAppPath;
    }

    public static final String getCachePath() {
        return mCachePath;
    }

    @CalledByNative
    public static final String getCrashPath() {
        return mCrashPath;
    }

    @CalledByNative
    public static int getThreadPoolStackSize() {
        return TTPlayerConfiger.getValue(25, 32);
    }

    @CalledByNative
    public static boolean isIPPlayer() {
        return mIsIPCPlayer;
    }

    @CalledByNative
    public static int isUsedThreadPool() {
        return TTPlayerConfiger.getValue(24, false) ? 1 : 0;
    }

    public static void registerPlayerInfo() {
        _registerPlayerInfo();
    }

    public static final void setCachePath(String str) {
        mCachePath = str;
    }

    public static final void setCrashPath(String str) {
        mCrashPath = str;
    }

    public static void setIsIPPlayer(boolean z2) {
        mIsIPCPlayer = z2;
    }

    public static final void setTempFileDir(String str) {
        mAppPath = str;
    }

    public int close() {
        long j2 = this.mHandle;
        if (j2 == 0) {
            return -1;
        }
        _close(j2);
        return 0;
    }

    @CalledByNative
    public void frameDTSNotify(int i2, long j2, long j3) {
        try {
            FrameMetadataListener frameMetadataListener = this.mFrameMetadataListener;
            if (frameMetadataListener != null) {
                frameMetadataListener.frameDTSNotify(i2, j3, j2);
            }
        } catch (Throwable unused) {
        }
    }

    public Context getContext() {
        return this.mContext;
    }

    public double getDoubleOption(int i2, double d2) {
        return _getDoubleValue(this.mHandle, i2, d2);
    }

    public float getFloatOption(int i2, float f2) {
        return _getFloatValue(this.mHandle, i2, f2);
    }

    public final long getHandle() {
        return this.mHandle;
    }

    public int getIntOption(int i2, int i3) {
        if (i2 == 11) {
            return _getIntValue(this.mHandle, i2, i3);
        }
        if (i2 == 51) {
            return this.mTracker;
        }
        switch (i2) {
            case 1:
                return _getDuration(this.mHandle);
            case 2:
                return _getCurrentPosition(this.mHandle);
            case 3:
                return _getVideoWidth(this.mHandle);
            case 4:
                return _getVideoHeight(this.mHandle);
            case 5:
                return _isLooping(this.mHandle);
            case 6:
                return _isPlaying(this.mHandle);
            default:
                return _getIntValue(this.mHandle, i2, i3);
        }
    }

    public long getLongOption(int i2, long j2) {
        return i2 == 50 ? this.mHandle : _getLongValue(this.mHandle, i2, j2);
    }

    public long getNativePlayer() {
        return this.mHandle;
    }

    public Object getObjectValue(int i2) {
        return _getJObjectValue(this.mHandle, i2);
    }

    public String getStringOption(int i2) {
        return _getStringValue(this.mHandle, i2);
    }

    public void mouseEvent(int i2, int i3, int i4) {
        _mouseEvent(this.mHandle, i2, i3, i4);
    }

    @CalledByNative
    public void onFrameAboutToBeRendered(int i2, long j2, long j3, Map<Integer, String> map) {
        try {
            FrameMetadataListener frameMetadataListener = this.mFrameMetadataListener;
            if (frameMetadataListener != null) {
                frameMetadataListener.onFrameAboutToBeRendered(i2, j2, j3, map);
            }
        } catch (Throwable unused) {
        }
    }

    @CalledByNative
    public final void onLogInfo(int i2, int i3, String str) {
        IPlayerNotifyer iPlayerNotifyer = this.mNotifyer;
        if (iPlayerNotifyer != null) {
            try {
                iPlayerNotifyer.handleErrorNotify(this.mId, i2, i3, str);
            } catch (Throwable unused) {
            }
        }
    }

    @CalledByNative
    public void onNotify(int i2, int i3, int i4, String str) {
        if (((this.mNotifyerState >> i3) & 1) != 1) {
            return;
        }
        try {
            IPlayerNotifyer iPlayerNotifyer = this.mNotifyer;
            if (iPlayerNotifyer != null) {
                iPlayerNotifyer.handlePlayerNotify(this.mId, i2, i3, i4, str);
            }
        } catch (Throwable unused) {
        }
    }

    public int pause() {
        long j2 = this.mHandle;
        if (j2 == 0) {
            return -1;
        }
        return _pause(j2);
    }

    public int prepare() {
        long j2 = this.mHandle;
        if (j2 == 0) {
            return -1;
        }
        return _prepare(j2);
    }

    public int prevClose() {
        long j2 = this.mHandle;
        if (j2 == 0) {
            return -1;
        }
        _setVideoSurface(j2, null);
        return 0;
    }

    public void release() {
        this.mNotifyerState = 0L;
        long j2 = this.mHandle;
        if (j2 != 0) {
            _release(j2);
            this.mHandle = 0L;
        }
        this.mNotifyer = null;
        this.mScreenshotListener = null;
    }

    public int reset() {
        long j2 = this.mHandle;
        if (j2 == 0) {
            return -1;
        }
        return _reset(j2);
    }

    public void rotateCamera(float f2, float f3) {
        _rotateCamera(this.mHandle, f2, f3);
    }

    public void seekTo(int i2) {
        _seek(this.mHandle, i2);
    }

    public void setAudioProcessor(AudioProcessor audioProcessor) {
        long j2 = this.mHandle;
        if (j2 != 0) {
            _setAudioProcessor(j2, audioProcessor);
        }
    }

    public void setCacheFile(String str, int i2) {
        _setCacheFile(this.mHandle, str, i2);
    }

    public void setDataSource(String str) {
        long j2 = this.mHandle;
        if (j2 != 0) {
            _setDataSource(j2, str);
        }
    }

    public void setDataSourceFd(int i2) {
        long j2 = this.mHandle;
        if (j2 != 0) {
            _setDataSourceFd(j2, i2);
        }
    }

    public int setDoubleOption(int i2, double d2) {
        return _setDoubleValue(this.mHandle, i2, d2);
    }

    public int setFloatOption(int i2, float f2) {
        return _setFloatValue(this.mHandle, i2, f2);
    }

    public void setFrameMetadataListener(FrameMetadataListener frameMetadataListener) {
        this.mFrameMetadataListener = frameMetadataListener;
    }

    public int setIntOption(int i2, int i3) throws RemoteException {
        if (i2 == 22 && i3 != 0 && i3 != 2 && i3 == 1) {
            Process.killProcess(Process.myPid());
            System.exit(0);
            throw null;
        }
        if (i2 != 111) {
            return _setIntValue(this.mHandle, i2, i3);
        }
        int[] iArr = TTPlayerKeys.SupportSampleRates;
        int length = iArr.length;
        int[] iArr2 = new int[iArr.length];
        int i4 = 0;
        for (int i5 = 0; i5 < length; i5++) {
            if (((1 << i5) & i3) == 0) {
                iArr2[i4] = TTPlayerKeys.SupportSampleRates[i5];
                i4++;
            }
        }
        _setSupprotSampleRates(iArr2, i4);
        return 0;
    }

    public void setLoadControl(LoadControl loadControl) {
        long j2 = this.mHandle;
        if (j2 != 0) {
            _setLoadControl(j2, loadControl);
        }
    }

    public int setLongOption(int i2, long j2) {
        return _setLongValue(this.mHandle, i2, j2);
    }

    public void setLooping(int i2) {
        _setLooping(this.mHandle, i2);
    }

    public void setMaskInfo(MaskInfo maskInfo) {
        long j2 = this.mHandle;
        if (j2 != 0) {
            _setMaskInfo(j2, maskInfo);
        }
    }

    public void setMediaTransport(MediaTransport mediaTransport) {
        long j2 = this.mHandle;
        if (j2 != 0) {
            _setMediaTransport(j2, mediaTransport);
        }
    }

    public void setNotifyer(IPlayerNotifyer iPlayerNotifyer) {
        this.mNotifyer = iPlayerNotifyer;
    }

    public void setNotifyerState(long j2) {
        this.mNotifyerState = j2;
        _setIntValue(this.mHandle, 16, (int) j2);
        _setLongValue(this.mHandle, 16, j2);
    }

    public void setOnScreenshotListener(MediaPlayer.OnScreenshotListener onScreenshotListener) {
        this.mScreenshotListener = onScreenshotListener;
    }

    public int setStringOption(int i2, String str) {
        return _setStringValue(this.mHandle, i2, str);
    }

    public void setSubInfo(SubInfo subInfo) {
        long j2 = this.mHandle;
        if (j2 != 0) {
            _setSubInfo(j2, subInfo);
        }
    }

    public int setSurfaceValue(long j2) {
        return _setSurfaceValue(this.mHandle, j2);
    }

    public int setVideoSurface(Surface surface) {
        long j2 = this.mHandle;
        if (j2 != 0) {
            return _setVideoSurface(j2, surface);
        }
        return -1;
    }

    public void setVolume(float f2, float f3) {
        _setVolume(this.mHandle, f2, f3);
    }

    public int start() {
        long j2 = this.mHandle;
        if (j2 == 0) {
            return -1;
        }
        return _start(j2);
    }

    public int stop() {
        long j2 = this.mHandle;
        if (j2 == 0) {
            return -1;
        }
        _stop(j2);
        return 0;
    }

    public void switchStream(int i2, int i3) {
        _switchStream(this.mHandle, i2, i3);
    }

    public void takeScreenshot() {
        _takeScreenshot(this.mHandle);
    }

    @CalledByNative
    public final void takeScreenshotComplete(Bitmap bitmap) {
        MediaPlayer.OnScreenshotListener onScreenshotListener = this.mScreenshotListener;
        if (onScreenshotListener != null) {
            onScreenshotListener.onTakeScreenShotCompletion(bitmap);
        }
    }

    @CalledByNative
    public void updateFrameTerminatedDTS(int i2, long j2, long j3) {
        try {
            FrameMetadataListener frameMetadataListener = this.mFrameMetadataListener;
            if (frameMetadataListener != null) {
                frameMetadataListener.updateFrameTerminatedDTS(i2, j3, j2);
            }
        } catch (Throwable unused) {
        }
    }

    public void setDataSource(IMediaDataSource iMediaDataSource) throws IllegalStateException, SecurityException, IllegalArgumentException {
        long j2 = this.mHandle;
        if (j2 != 0) {
            _setDataSource(j2, iMediaDataSource);
        }
    }
}
