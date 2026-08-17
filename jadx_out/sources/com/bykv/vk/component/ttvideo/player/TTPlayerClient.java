package com.bykv.vk.component.ttvideo.player;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.PowerManager;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.anythink.china.a.c;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.shx.jx;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bykv.vk.component.ttvideo.net.AVResolver;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.component.ttvideo.utils.AVErrorInfo;
import com.bykv.vk.component.ttvideo.utils.AVLogger;
import com.bykv.vk.component.ttvideo.utils.AVTime;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

@Keep
/* loaded from: classes3.dex */
public class TTPlayerClient extends MediaPlayerClient implements Handler.Callback, ISurfaceListener {
    public static final int KEY_IS_CONFIG_PARAMS_OPTION = 100;
    private static final String TAG = "TTPlayerClient";
    private String mBufferingInfo;
    private TTSurfaceCallback mCallback;
    private HashMap<Integer, Integer> mConfigParams;
    private Context mContext;
    private int mCrashType;
    private StringBuilder mCrashedInfo;
    private int mDisablePlayerStayAwake;
    private int mErrorCode;
    private Handler mHandler;
    private MediaPlayer.OnLogListener mLogListener;
    private int mMediaCodecStopTimeOutMs;
    private MediaPlayer.OnBufferingUpdateListener mOnBufferingUpdateListener;
    private MediaPlayer.OnCompletionListener mOnCompletionListener;
    private MediaPlayer.OnErrorListener mOnErrorListener;
    private MediaPlayer.OnExternInfoListener mOnExternInfoListener;
    private MediaPlayer.OnInfoListener mOnInfoListener;
    private MediaPlayer.OnPreparedListener mOnPreparedListener;
    private MediaPlayer.onSARChangedListener mOnSARChangedListener;
    private MediaPlayer.OnSeekCompleteListener mOnSeekCompleteListener;
    private MediaPlayer.OnVideoSizeChangedListener mOnVideoSizeChangedListener;
    private ITTPlayerRef mPlayer;
    private final ReentrantReadWriteLock.ReadLock mReadLock;
    private final ReentrantReadWriteLock mReadWritedLock;
    private volatile boolean mRealsedSurface;
    private int mRtcPlay;
    private boolean mScreenOnWhilePlaying;
    private boolean mStayAwake;
    private Surface mSurface;
    private SurfaceHolder mSurfaceHolder;
    private String mUri;
    private String mVoiceInfo;
    private PowerManager.WakeLock mWakeLock;
    private MediaPlayer mWrapper;
    private final ReentrantReadWriteLock.WriteLock mWriteLock;
    private boolean mSeekComplete = true;
    private LinkedList<String> mLogInfo = new LinkedList<>();
    private long mListenerState = 0;
    private int mPlayLifeId = -1;
    private final Object mHandlerLocker = new Object();
    private final ReentrantLock mReentrantLock = new ReentrantLock();
    private final ReentrantLock mReentrantLockInRtc = new ReentrantLock();

    static {
        TTVersion.saveVersionInfo();
    }

    private TTPlayerClient(Context context, HashMap<Integer, Integer> map) {
        this.mRealsedSurface = false;
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.mReadWritedLock = reentrantReadWriteLock;
        this.mReadLock = reentrantReadWriteLock.readLock();
        this.mWriteLock = reentrantReadWriteLock.writeLock();
        this.mErrorCode = 0;
        this.mRtcPlay = 0;
        this.mCrashedInfo = new StringBuilder(1024);
        this.mCrashType = -1;
        this.mDisablePlayerStayAwake = 0;
        this.mMediaCodecStopTimeOutMs = -1;
        this.mConfigParams = map;
        this.mRealsedSurface = false;
        this.mCallback = new TTSurfaceCallback(this);
        this.mContext = context;
        if (Looper.myLooper() != null) {
            this.mHandler = new Handler(this);
        } else {
            this.mHandler = new Handler(Looper.getMainLooper(), this);
        }
    }

    @Keep
    public static synchronized TTPlayerClient create(MediaPlayer mediaPlayer, Context context) {
        return create(mediaPlayer, context, null);
    }

    private String getPlayerCrashedInfo() throws Throwable {
        String crashFileContext;
        String crashFileContext2;
        int value = TTPlayerConfiger.getValue(18, 1);
        StringBuilder sb = new StringBuilder();
        ITTPlayerRef iTTPlayerRef = this.mPlayer;
        Context context = iTTPlayerRef == null ? this.mContext : iTTPlayerRef.getContext();
        if (context == null) {
            return "context is null";
        }
        if (value > 1) {
            String strExistsCrashFilePath = TTCrashUtil.existsCrashFilePath(context);
            if (strExistsCrashFilePath != null && (crashFileContext2 = TTCrashUtil.getCrashFileContext(context, strExistsCrashFilePath, sb)) != null) {
                TTCrashUtil.deleteCrashFile(this.mContext, strExistsCrashFilePath);
                this.mCrashType = 1;
                TTPlayerConfiger.getValue(5, false);
                return crashFileContext2;
            }
            AVErrorInfo.setupPhoneInfo(context, sb);
        }
        String value2 = TTPlayerConfiger.getValue(19, (String) null);
        if (value2 != null && (crashFileContext = TTCrashUtil.getCrashFileContext(this.mContext, value2, sb)) != null) {
            TTCrashUtil.deleteCrashFile(this.mContext, value2);
            this.mCrashType = 1;
            TTPlayerConfiger.getValue(5, false);
            return crashFileContext;
        }
        sb.append("\ncreate time:" + AVTime.getFormatNow());
        sb.append("\nport version:");
        sb.append(value);
        sb.append("\nstart service info:");
        sb.append(TTPlayerConfiger.getValue(16, "not find service start info"));
        sb.append("\nstop service info:");
        sb.append(TTPlayerConfiger.getValue(12, "not find service stop info"));
        sb.append("\ncrash:");
        sb.append(TTPlayerConfiger.getValue(7, false));
        sb.append("\nsdk info:");
        sb.append(TTPlayerConfiger.getValue(15, "not find sdk info"));
        sb.append("\ntimeout count:");
        sb.append(TTPlayerConfiger.getValue(10, -1));
        sb.append("\nforeground:");
        sb.append(TTPlayerConfiger.getValue(21, -1));
        sb.append("\non screen:");
        sb.append(TTPlayerConfiger.getValue(22, -1));
        sb.append("\n battery info:");
        sb.append(TTPlayerConfiger.getValue(23, "not find"));
        sb.append("\nurl:");
        sb.append(this.mUri);
        sb.append("\ncrash:\r\n");
        sb.append((CharSequence) this.mCrashedInfo);
        this.mCrashType = 0;
        if (value <= 1) {
            return sb.toString();
        }
        TTPlayerConfiger.getValue(5, false);
        return TTCrashUtil.getBase64SampleCrash(sb.toString());
    }

    private String getPlayerErrorInfo() throws Throwable {
        try {
            StringBuilder sb = new StringBuilder();
            LinkedList<String> linkedList = this.mLogInfo;
            if ((linkedList != null && linkedList.size() > 0) || this.mBufferingInfo != null || this.mVoiceInfo != null) {
                AVErrorInfo.setupErrorInfo(this.mContext, sb, "error", "play error", this.mUri);
                Iterator<String> it = this.mLogInfo.iterator();
                while (it.hasNext()) {
                    sb.append(it.next());
                    sb.append("\n");
                }
                String str = this.mBufferingInfo;
                if (str != null) {
                    sb.append(str);
                    sb.append("\n");
                    this.mBufferingInfo = null;
                }
                String str2 = this.mVoiceInfo;
                if (str2 != null) {
                    sb.append(str2);
                    sb.append("\n");
                    this.mVoiceInfo = null;
                }
            }
            return sb.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValid() {
        ITTPlayerRef iTTPlayerRef = this.mPlayer;
        return iTTPlayerRef != null && iTTPlayerRef.isValid();
    }

    private void notifyInfo(int i2, int i3) {
        int i4;
        MediaPlayer.OnInfoListener onInfoListener = this.mOnInfoListener;
        if (onInfoListener == null) {
            return;
        }
        if (i2 == 4) {
            i4 = 701;
        } else if (i2 == 5) {
            i4 = 702;
        } else if (i2 == 32) {
            i4 = MediaPlayer.MEDIA_INFO_SILENCE_DETECTED;
        } else if (i2 == 47) {
            i4 = MediaPlayer.MEDIA_INFO_PREBUFFERING_START;
        } else if (i2 == 41) {
            i4 = MediaPlayer.MEDIA_INFO_RTC_VIDEO_DECODE_STALL;
        } else if (i2 != 42) {
            switch (i2) {
                case 7:
                    i4 = 3;
                    break;
                case 8:
                    i4 = 801;
                    break;
                case 9:
                    i4 = 802;
                    break;
                case 10:
                    i4 = 901;
                    break;
                default:
                    switch (i2) {
                        case 20:
                            i4 = MediaPlayer.MEDIA_INFO_ROTATION_CHANGED;
                            break;
                        case 21:
                            i4 = MediaPlayer.MEDIA_INFO_STREAM_CHANGED;
                            break;
                        case 22:
                            i4 = MediaPlayer.MEDIA_INFO_DEVICE_OPENED;
                            break;
                        case 23:
                            i4 = MediaPlayer.MEDIA_INFO_SAR_CHANGED;
                            break;
                        case 24:
                            i4 = MediaPlayer.MEDIA_INFO_SPEED_CHANGED;
                            break;
                        case 25:
                            i4 = MediaPlayer.MEDIA_INFO_FIRST_FRAME_AFTER_SEEK;
                            break;
                        case 26:
                            i4 = MediaPlayer.MEDIA_INFO_VIDEO_STREAM_BITRATE_CHANGED;
                            break;
                        case 27:
                            i4 = MediaPlayer.MEDIA_INFO_AUDIO_RENDER_STALL;
                            break;
                        case 28:
                            i4 = MediaPlayer.MEDIA_INFO_VIDEO_RENDER_STALL;
                            break;
                        case 29:
                            i4 = MediaPlayer.MEDIA_INFO_AUDIO_RENDER_START;
                            break;
                        case 30:
                            i4 = MediaPlayer.MEDIA_INFO_VIDEO_READY_FOR_DISPLAY;
                            break;
                        default:
                            switch (i2) {
                                case 34:
                                    i4 = MediaPlayer.MEDIA_INFO_VIDEO_DEMUX_STALL;
                                    break;
                                case 35:
                                    i4 = MediaPlayer.MEDIA_INFO_AUDIO_DEMUX_STALL;
                                    break;
                                case 36:
                                    i4 = MediaPlayer.MEDIA_INFO_VIDEO_DECODE_STALL;
                                    break;
                                case 37:
                                    i4 = MediaPlayer.MEDIA_INFO_AUDIO_DECODE_STALL;
                                    break;
                                case 38:
                                    i4 = MediaPlayer.MEDIA_INFO_POSITION_UPDATE;
                                    break;
                                case 39:
                                    i4 = MediaPlayer.MEDIA_INFO_AUDIO_PTS_BACK;
                                    break;
                                default:
                                    switch (i2) {
                                        case 49:
                                            i4 = MediaPlayer.MEDIA_INFO_BARRAGE_MASK_INFO;
                                            break;
                                        case 50:
                                            i4 = MediaPlayer.MEDIA_INFO_SUBTITLE_INFO;
                                            break;
                                        case ILivePlayer.LIVE_DATALOADER_RW_TIMEOUT /* 51 */:
                                            i4 = MediaPlayer.MEDIA_INFO_AVOUTSYNC_START;
                                            break;
                                        case 52:
                                            i4 = MediaPlayer.MEDIA_INFO_AVOUTSYNC_END;
                                            break;
                                        case 53:
                                            i4 = MediaPlayer.MEDIA_INFO_FORMATER_START;
                                            break;
                                        case 54:
                                            i4 = MediaPlayer.MEDIA_INFO_DECODER_START;
                                            break;
                                        default:
                                            i4 = -1;
                                            break;
                                    }
                            }
                    }
            }
        } else {
            i4 = MediaPlayer.MEDIA_INFO_RTC_AUDIO_DECODE_STALL;
        }
        onInfoListener.onInfo(this.mWrapper, i4, i3);
    }

    private void onExternInfo(int i2, String str) {
        if (this.mRtcPlay == 0) {
            MediaPlayer.OnExternInfoListener onExternInfoListener = this.mOnExternInfoListener;
            if (onExternInfoListener == null || str == null) {
                return;
            }
            onExternInfoListener.onExternInfo(this.mWrapper, i2, str);
            return;
        }
        try {
            this.mReentrantLockInRtc.lock();
            MediaPlayer.OnExternInfoListener onExternInfoListener2 = this.mOnExternInfoListener;
            if (onExternInfoListener2 != null && str != null) {
                onExternInfoListener2.onExternInfo(this.mWrapper, i2, str);
            }
        } finally {
            this.mReentrantLockInRtc.unlock();
        }
    }

    private void sendCompletioned(int i2) {
        try {
            this.mReentrantLock.lock();
            MediaPlayer.OnCompletionListener onCompletionListener = this.mOnCompletionListener;
            if (onCompletionListener != null && i2 >= this.mPlayLifeId) {
                onCompletionListener.onCompletion(this.mWrapper);
            }
        } finally {
            if (this.mReentrantLock.isLocked()) {
                this.mReentrantLock.unlock();
            }
        }
    }

    private void sendErrorInfo(int i2, int i3) {
        try {
            this.mReentrantLock.lock();
            MediaPlayer.OnErrorListener onErrorListener = this.mOnErrorListener;
            if (onErrorListener != null && i3 >= this.mPlayLifeId) {
                int i4 = this.mErrorCode;
                if (i4 != 0) {
                    i2 = i4;
                } else if (i2 == 0) {
                    i2 = -1048575;
                }
                onErrorListener.onError(this.mWrapper, i2, 0);
            }
        } finally {
            if (this.mReentrantLock.isLocked()) {
                this.mReentrantLock.unlock();
            }
        }
    }

    private void sendSeekCompleted(int i2) {
        MediaPlayer.OnSeekCompleteListener onSeekCompleteListener;
        if (this.mSeekComplete || (onSeekCompleteListener = this.mOnSeekCompleteListener) == null) {
            return;
        }
        this.mSeekComplete = true;
        if (i2 >= this.mPlayLifeId) {
            onSeekCompleteListener.onSeekComplete(this.mWrapper);
        }
    }

    @SuppressLint({"Wakelock"})
    private void stayAwake(boolean z2) {
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock != null) {
            if (z2 && !wakeLock.isHeld()) {
                this.mWakeLock.acquire();
            } else if (!z2 && this.mWakeLock.isHeld()) {
                this.mWakeLock.release();
            }
        }
        this.mStayAwake = z2;
        updateSurfaceScreenOn();
    }

    public void close() {
        this.mRealsedSurface = true;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.close();
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void deselectTrack(int i2) {
        this.mReadLock.lock();
        ITTPlayerRef iTTPlayerRef = this.mPlayer;
        if (iTTPlayerRef != null && i2 == 0) {
            iTTPlayerRef.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_SET_RADIO_MODE, 1);
        } else if (iTTPlayerRef != null) {
            iTTPlayerRef.setIntOption(65, i2 << 8);
        }
        this.mReadLock.unlock();
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public int getCurrentPosition() {
        this.mReadLock.lock();
        try {
            return isValid() ? this.mPlayer.getIntOption(2, 0) : 0;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public String getDataSource() {
        return this.mUri;
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public int getDuration() {
        this.mReadLock.lock();
        try {
            return isValid() ? this.mPlayer.getIntOption(1, 0) : 0;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public float getFloatOption(int i2, float f2) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                f2 = this.mPlayer.getFloatOption(i2, f2);
            }
            return f2;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public int getIntOption(int i2, int i3) {
        if (i2 == 5000) {
            return this.mErrorCode;
        }
        if (i2 == 26) {
            return this.mCrashType;
        }
        this.mReadLock.lock();
        try {
            if (isValid()) {
                i3 = this.mPlayer.getIntOption(i2, i3);
            }
            return i3;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public long getLongOption(int i2, long j2) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                j2 = this.mPlayer.getLongOption(i2, j2);
            }
            return j2;
        } finally {
            this.mReadLock.unlock();
        }
    }

    public Object getObjectOption(int i2) {
        this.mReadLock.lock();
        try {
            return isValid() ? this.mPlayer.getObjectOption(i2) : null;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public int getSelectedTrack(int i2) {
        if (i2 == 2) {
            return 1;
        }
        if (i2 == 1) {
            return 0;
        }
        return i2 == 4 ? 2 : -1;
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public String getStringOption(int i2) {
        if (i2 == 5001) {
            return getPlayerCrashedInfo();
        }
        if (i2 != 5002) {
            this.mReadLock.lock();
            try {
                return isValid() ? this.mPlayer.getStringOption(i2) : null;
            } finally {
                this.mReadLock.unlock();
            }
        }
        LinkedList<String> linkedList = this.mLogInfo;
        if (linkedList == null || linkedList.size() == 0) {
            return null;
        }
        return getPlayerErrorInfo();
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public MediaPlayer.TrackInfo[] getTrackInfo() {
        return new MediaPlayer.TrackInfo[]{new MediaPlayer.TrackInfo(0, new MediaFormat()), new MediaPlayer.TrackInfo(1, new MediaFormat()), new MediaPlayer.TrackInfo(2, new MediaFormat())};
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public int getType() {
        this.mReadLock.lock();
        try {
            return isValid() ? this.mPlayer.getType() : 0;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public int getVideoHeight() {
        this.mReadLock.lock();
        try {
            return isValid() ? this.mPlayer.getIntOption(4, 0) : 0;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public int getVideoType() {
        this.mReadLock.lock();
        try {
            return isValid() ? this.mPlayer.getIntOption(11, 0) : 0;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public int getVideoWidth() {
        this.mReadLock.lock();
        try {
            return isValid() ? this.mPlayer.getIntOption(3, 0) : 0;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i2 = message.arg2;
        int i3 = message.what;
        int i4 = message.arg1;
        Object obj = message.obj;
        handleNotify(i2, i3, i4, obj instanceof String ? (String) obj : null);
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handleNotify(int r6, int r7, int r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.component.ttvideo.player.TTPlayerClient.handleNotify(int, int, int, java.lang.String):void");
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public boolean isLooping() {
        this.mReadLock.lock();
        try {
            boolean z2 = false;
            if (isValid()) {
                if (this.mPlayer.getIntOption(5, 0) == 1) {
                    z2 = true;
                }
            }
            return z2;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public boolean isMute() {
        this.mReadLock.lock();
        try {
            boolean z2 = false;
            if (isValid()) {
                if (this.mPlayer.getIntOption(12, 0) == 1) {
                    z2 = true;
                }
            }
            return z2;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public boolean isPlaying() {
        this.mReadLock.lock();
        try {
            boolean z2 = false;
            if (isValid()) {
                if (this.mPlayer.getIntOption(6, 0) == 1) {
                    z2 = true;
                }
            }
            return z2;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void mouseEvent(int i2, int i3, int i4) {
        int i5 = 1;
        if (i2 != 0) {
            if (i2 != 1) {
                i5 = 2;
                if (i2 != 2) {
                    i5 = 0;
                }
            } else {
                i5 = 3;
            }
        }
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.mouseEvent(i5, i3, i4);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    public void onCrashedInfo(String str) {
        if (this.mCrashedInfo.length() < 1024) {
            StringBuilder sb = this.mCrashedInfo;
            sb.append(str);
            sb.append("\n");
        }
    }

    public void onPlayLogInfo(int i2, int i3, String str) {
        if (i2 == 2) {
            if (i3 == 1) {
                this.mVoiceInfo = str;
                return;
            } else {
                if (i3 == 0) {
                    this.mBufferingInfo = str;
                    return;
                }
                return;
            }
        }
        if (i2 == 0) {
            this.mErrorCode = i3;
        }
        if (str != null) {
            if (this.mLogInfo.size() > 40) {
                this.mLogInfo.removeFirst();
            }
            this.mLogInfo.addLast(String.format(Locale.US, "%s&&time:%d", str, Long.valueOf(System.currentTimeMillis())));
        }
    }

    public void onPlayerNotify(int i2, int i3, int i4, String str) {
        synchronized (this.mHandlerLocker) {
            try {
                Handler handler = this.mHandler;
                if (handler == null) {
                    return;
                }
                if (i3 == 40 && str != null) {
                    handleNotify(i2, i3, i4, str);
                    return;
                }
                Message messageObtainMessage = handler.obtainMessage(i3, i4, i2);
                messageObtainMessage.obj = str;
                messageObtainMessage.sendToTarget();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.ISurfaceListener
    public void onSurfaceChanged(SurfaceHolder surfaceHolder) {
        AVLogger.k(TAG, "surface is change");
    }

    @Override // com.bykv.vk.component.ttvideo.player.ISurfaceListener
    public void onSurfaceCreated(SurfaceHolder surfaceHolder) {
        this.mSurfaceHolder = surfaceHolder;
        if (this.mRealsedSurface) {
            return;
        }
        this.mReadLock.lock();
        try {
            if (isValid()) {
                SurfaceHolder surfaceHolder2 = this.mSurfaceHolder;
                if (surfaceHolder != surfaceHolder2) {
                    if (surfaceHolder2 != null) {
                        surfaceHolder2.removeCallback(this.mCallback);
                    }
                    this.mSurfaceHolder = surfaceHolder;
                    if (surfaceHolder != null) {
                        surfaceHolder.addCallback(this.mCallback);
                    }
                }
                this.mPlayer.setSurface(surfaceHolder.getSurface());
            }
            this.mReadLock.unlock();
        } catch (Throwable th) {
            this.mReadLock.unlock();
            throw th;
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.ISurfaceListener
    public void onSurfaceDestroyed(SurfaceHolder surfaceHolder) throws ExecutionException, InterruptedException, TimeoutException {
        if (this.mRealsedSurface) {
            return;
        }
        if (this.mMediaCodecStopTimeOutMs > 0) {
            try {
                AVThreadPool.addTask(new Callable<String>() { // from class: com.bykv.vk.component.ttvideo.player.TTPlayerClient.2
                    @Override // java.util.concurrent.Callable
                    public String call() throws InterruptedException {
                        try {
                            TTPlayerClient.this.mReadLock.lockInterruptibly();
                            try {
                                if (TTPlayerClient.this.isValid()) {
                                    TTPlayerClient.this.mPlayer.setSurface(null);
                                }
                                TTPlayerClient.this.mReadLock.unlock();
                                return cb.f11288k;
                            } catch (Throwable th) {
                                TTPlayerClient.this.mReadLock.unlock();
                                throw th;
                            }
                        } catch (InterruptedException unused) {
                            u.l(TTPlayerClient.TAG, "mPlayer setsurface null failed.");
                            return cb.f11288k;
                        }
                    }
                }).get(this.mMediaCodecStopTimeOutMs, TimeUnit.MILLISECONDS);
                return;
            } catch (InterruptedException | ExecutionException | TimeoutException unused) {
                u.l(TAG, "set surface time out");
                return;
            }
        }
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setSurface(null);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void pause() {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.pause();
            }
            this.mReadLock.unlock();
            stayAwake(false);
        } catch (Throwable th) {
            this.mReadLock.unlock();
            throw th;
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void prepare() {
        prepareAsync();
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void prepareAsync() {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mErrorCode = 0;
                this.mLogInfo.clear();
                if (this.mRealsedSurface) {
                    this.mPlayer.setSurface(this.mSurfaceHolder.getSurface());
                    this.mRealsedSurface = false;
                }
                this.mPlayer.prepare();
                updateLifeId();
            }
            this.mReadLock.unlock();
        } catch (Throwable th) {
            this.mReadLock.unlock();
            throw th;
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    @Deprecated
    public void prevClose() {
        this.mRealsedSurface = true;
        SurfaceHolder surfaceHolder = this.mSurfaceHolder;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.mCallback);
        }
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.prevClose();
            }
            this.mReadLock.unlock();
            this.mSurface = null;
        } catch (Throwable th) {
            this.mReadLock.unlock();
            throw th;
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void release() {
        String playerErrorInfo;
        stayAwake(false);
        updateSurfaceScreenOn();
        this.mWriteLock.lock();
        try {
            ITTPlayerRef iTTPlayerRef = this.mPlayer;
            this.mPlayer = null;
            this.mPlayLifeId = -1;
            if (iTTPlayerRef != null) {
                iTTPlayerRef.release();
            }
            this.mWriteLock.unlock();
            SurfaceHolder surfaceHolder = this.mSurfaceHolder;
            if (surfaceHolder != null) {
                surfaceHolder.removeCallback(this.mCallback);
                this.mSurfaceHolder = null;
                this.mRealsedSurface = true;
            }
            this.mSurface = null;
            synchronized (this.mHandlerLocker) {
                try {
                    Handler handler = this.mHandler;
                    if (handler != null) {
                        handler.removeCallbacksAndMessages(null);
                        this.mHandler = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.mLogListener != null && (playerErrorInfo = getPlayerErrorInfo()) != null && playerErrorInfo.length() > 0) {
                this.mLogListener.onLogInfo(this.mWrapper, playerErrorInfo);
            }
            this.mContext = null;
        } catch (Throwable th2) {
            this.mWriteLock.unlock();
            throw th2;
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void releaseAsync() {
        this.mRealsedSurface = true;
        SurfaceHolder surfaceHolder = this.mSurfaceHolder;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.mCallback);
        }
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.prevClose();
            }
            this.mReadLock.unlock();
            this.mSurface = null;
            new jx(new Runnable() { // from class: com.bykv.vk.component.ttvideo.player.TTPlayerClient.1
                @Override // java.lang.Runnable
                public void run() {
                    TTPlayerClient.this.release();
                }
            }, "TPlayerClient").start();
        } catch (Throwable th) {
            this.mReadLock.unlock();
            throw th;
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void reset() {
        this.mWriteLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.reset();
                SurfaceHolder surfaceHolder = this.mSurfaceHolder;
                if (surfaceHolder != null) {
                    this.mPlayer.setSurface(surfaceHolder.getSurface());
                }
                this.mHandler.removeCallbacksAndMessages(null);
                this.mErrorCode = 0;
                this.mLogInfo.clear();
                updateLifeId();
            }
            this.mWriteLock.unlock();
        } catch (Throwable th) {
            this.mWriteLock.unlock();
            throw th;
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void rotateCamera(float f2, float f3) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.rotateCamera(f2, f3);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void seekTo(int i2) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mSeekComplete = false;
                this.mPlayer.seekTo(i2);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void selectTrack(int i2) {
        this.mReadLock.lock();
        ITTPlayerRef iTTPlayerRef = this.mPlayer;
        if (iTTPlayerRef != null && i2 == 0) {
            iTTPlayerRef.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_SET_RADIO_MODE, 0);
        }
        this.mReadLock.unlock();
    }

    public void setAudioProcessor(AudioProcessor audioProcessor) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setAudioProcessor(audioProcessor);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void setCacheFile(String str, int i2) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setCacheFile(str, i2);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void setDataSource(Context context, Uri uri, Map<String, String> map) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        if (uri == null) {
            return;
        }
        setDataSource(context, uri);
        if (map == null || map.size() == 0) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            sb.append(entry.getKey());
            sb.append(":");
            sb.append(entry.getValue());
            sb.append("\r\n");
        }
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setStringOption(20, sb.toString());
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void setDisplay(SurfaceHolder surfaceHolder) {
        Surface surface;
        SurfaceHolder surfaceHolder2 = this.mSurfaceHolder;
        if (surfaceHolder2 != null) {
            surfaceHolder2.removeCallback(this.mCallback);
        }
        this.mSurfaceHolder = surfaceHolder;
        if (surfaceHolder != null) {
            surfaceHolder.addCallback(this.mCallback);
            surface = this.mSurfaceHolder.getSurface();
        } else {
            surface = null;
        }
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setSurface(surface);
            }
            this.mReadLock.unlock();
            updateSurfaceScreenOn();
        } catch (Throwable th) {
            this.mReadLock.unlock();
            throw th;
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public int setFloatOption(int i2, float f2) {
        this.mReadLock.lock();
        try {
            return isValid() ? this.mPlayer.setFloatOption(i2, f2) : -1;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void setFrameMetadataListener(FrameMetadataListener frameMetadataListener) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setFrameMetadataListener(frameMetadataListener);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public int setIntOption(int i2, int i3) {
        if (i2 == 41) {
            AVResolver.HOST_MAX_CACHE_TIME = i3;
            return 0;
        }
        if (i2 == 5003) {
            this.mDisablePlayerStayAwake = i3;
            return 0;
        }
        if (i2 == 952) {
            this.mMediaCodecStopTimeOutMs = i3;
            return 0;
        }
        this.mReadLock.lock();
        try {
            return isValid() ? this.mPlayer.setIntOption(i2, i3) : -1;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void setIsMute(boolean z2) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setIntOption(12, z2 ? 1 : 0);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    public void setLoadControl(LoadControl loadControl) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setLoadControl(loadControl);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public int setLongOption(int i2, long j2) {
        this.mReadLock.lock();
        try {
            return isValid() ? this.mPlayer.setLongOption(i2, j2) : -1;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void setLooping(boolean z2) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setLooping(z2 ? 1 : 0);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    public void setMaskInfo(MaskInfo maskInfo) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setMaskInfo(maskInfo);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void setMediaTransport(MediaTransport mediaTransport) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setMediaTransport(mediaTransport);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void setOnBufferingUpdateListener(MediaPlayer.OnBufferingUpdateListener onBufferingUpdateListener) {
        this.mOnBufferingUpdateListener = onBufferingUpdateListener;
        this.mListenerState |= 8;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setNotifyState(this.mListenerState);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void setOnCompletionListener(MediaPlayer.OnCompletionListener onCompletionListener) {
        this.mOnCompletionListener = onCompletionListener;
        this.mListenerState |= 8192;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setNotifyState(this.mListenerState);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void setOnErrorListener(MediaPlayer.OnErrorListener onErrorListener) {
        this.mOnErrorListener = onErrorListener;
        this.mListenerState |= 35184372088833L;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setNotifyState(this.mListenerState);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void setOnExternInfoListener(MediaPlayer.OnExternInfoListener onExternInfoListener) {
        this.mOnExternInfoListener = onExternInfoListener;
        this.mListenerState |= 27496381153280L;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setNotifyState(this.mListenerState);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void setOnInfoListener(MediaPlayer.OnInfoListener onInfoListener) {
        this.mOnInfoListener = onInfoListener;
        this.mListenerState |= 35614270388438962L;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setNotifyState(this.mListenerState);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void setOnLogListener(MediaPlayer.OnLogListener onLogListener) {
        this.mLogListener = onLogListener;
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void setOnPreparedListener(MediaPlayer.OnPreparedListener onPreparedListener) {
        this.mOnPreparedListener = onPreparedListener;
        this.mListenerState |= 4;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setNotifyState(this.mListenerState);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void setOnSARChangedListener(MediaPlayer.onSARChangedListener onsarchangedlistener) {
        this.mOnSARChangedListener = onsarchangedlistener;
        this.mListenerState |= c.f1403x;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setNotifyState(this.mListenerState);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void setOnSeekCompleteListener(MediaPlayer.OnSeekCompleteListener onSeekCompleteListener) {
        this.mOnSeekCompleteListener = onSeekCompleteListener;
        this.mListenerState |= 4096;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setNotifyState(this.mListenerState);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void setOnVideoSizeChangedListener(MediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        this.mOnVideoSizeChangedListener = onVideoSizeChangedListener;
        this.mListenerState |= 64;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setNotifyState(this.mListenerState);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void setPanoVideoControlModel(int i2) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setIntOption(11, i2);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void setPlaybackParams(PlaybackParams playbackParams) {
        this.mReadLock.lock();
        try {
            if (isValid() && playbackParams != null && playbackParams.getSpeed() != -1.0f) {
                this.mPlayer.setFloatOption(60, playbackParams.getSpeed());
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void setScreenOnWhilePlaying(boolean z2) {
        if (this.mScreenOnWhilePlaying != z2) {
            this.mScreenOnWhilePlaying = z2;
            updateSurfaceScreenOn();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public int setStringOption(int i2, String str) {
        this.mReadLock.lock();
        try {
            return isValid() ? this.mPlayer.setStringOption(i2, str) : -1;
        } finally {
            this.mReadLock.unlock();
        }
    }

    public void setSubInfo(SubInfo subInfo) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setSubInfo(subInfo);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void setSurface(Surface surface) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mSurface = surface;
                this.mPlayer.setSurface(surface);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void setVolume(float f2, float f3) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setVolume(f2, f3);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    @SuppressLint({"Wakelock"})
    public void setWakeMode(Context context, int i2) {
        boolean z2;
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock != null) {
            if (wakeLock.isHeld()) {
                this.mWakeLock.release();
                z2 = true;
            } else {
                z2 = false;
            }
            this.mWakeLock = null;
        } else {
            z2 = false;
        }
        PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(i2 | C.ENCODING_PCM_A_LAW, TTPlayerClient.class.getName());
        this.mWakeLock = wakeLockNewWakeLock;
        wakeLockNewWakeLock.setReferenceCounted(false);
        if (z2) {
            this.mWakeLock.acquire();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void start() {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.start();
                updateLifeId();
                this.mRtcPlay = this.mPlayer.getIntOption(800, 0);
            }
            this.mReadLock.unlock();
            stayAwake(true);
        } catch (Throwable th) {
            this.mReadLock.unlock();
            throw th;
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void stop() {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.stop();
            }
            this.mReadLock.unlock();
            stayAwake(false);
        } catch (Throwable th) {
            this.mReadLock.unlock();
            throw th;
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void switchStream(int i2, int i3) {
        if (this.mPlayer != null) {
            this.mReadLock.lock();
            try {
                if (isValid()) {
                    this.mPlayer.switchStream(i2, i3);
                }
            } finally {
                this.mReadLock.unlock();
            }
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void takeScreenshot(MediaPlayer.OnScreenshotListener onScreenshotListener) {
        if (this.mPlayer == null || onScreenshotListener == null) {
            return;
        }
        this.mListenerState |= 32768;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setNotifyState(this.mListenerState);
                this.mPlayer.setOnScreenshotListener(onScreenshotListener);
                this.mPlayer.takeScreenshot();
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    public void updateLifeId() {
        try {
            this.mReentrantLock.lock();
            this.mPlayLifeId = this.mPlayer.getLifeId();
        } finally {
            if (this.mReentrantLock.isLocked()) {
                this.mReentrantLock.unlock();
            }
        }
    }

    public void updateSurfaceScreenOn() {
        SurfaceHolder surfaceHolder = this.mSurfaceHolder;
        if (surfaceHolder == null || this.mDisablePlayerStayAwake != 0) {
            return;
        }
        surfaceHolder.setKeepScreenOn(this.mScreenOnWhilePlaying && this.mStayAwake);
    }

    @Keep
    public static synchronized TTPlayerClient create(MediaPlayer mediaPlayer, Context context, HashMap<Integer, Integer> map) {
        TTVersion.saveVersionInfo();
        TTPlayerClient tTPlayerClient = new TTPlayerClient(context, map);
        ITTPlayerRef iTTPlayerRefCreate = ITTPlayerRef.create(context, tTPlayerClient, map);
        if (iTTPlayerRefCreate == null) {
            return null;
        }
        tTPlayerClient.mPlayer = iTTPlayerRefCreate;
        tTPlayerClient.mWrapper = mediaPlayer;
        return tTPlayerClient;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0055  */
    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setDataSource(android.content.Context r3, android.net.Uri r4) throws java.lang.IllegalStateException, java.io.IOException, java.lang.SecurityException, java.lang.IllegalArgumentException {
        /*
            r2 = this;
            if (r4 != 0) goto L3
            goto L40
        L3:
            java.lang.String r0 = r4.getScheme()
            java.lang.String r1 = "content"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L2e
            java.lang.String r0 = "settings"
            java.lang.String r1 = r4.getAuthority()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L2e
            int r4 = android.media.RingtoneManager.getDefaultType(r4)
            android.net.Uri r4 = android.media.RingtoneManager.getActualDefaultRingtoneUri(r3, r4)
            if (r4 == 0) goto L26
            goto L2e
        L26:
            java.io.FileNotFoundException r3 = new java.io.FileNotFoundException
            java.lang.String r4 = "Failed to resolve default ringtone"
            r3.<init>(r4)
            throw r3
        L2e:
            r0 = 0
            android.content.ContentResolver r3 = r3.getContentResolver()     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L53 java.lang.SecurityException -> L59
            java.lang.String r1 = "r"
            android.content.res.AssetFileDescriptor r0 = r3.openAssetFileDescriptor(r4, r1)     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L53 java.lang.SecurityException -> L59
            if (r0 != 0) goto L41
            if (r0 == 0) goto L40
            r0.close()
        L40:
            return
        L41:
            java.io.FileDescriptor r3 = r0.getFileDescriptor()     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L53 java.lang.SecurityException -> L59
            r2.setDataSource(r3)     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L53 java.lang.SecurityException -> L59
            r0.close()
            return
        L4c:
            r3 = move-exception
            if (r0 == 0) goto L52
            r0.close()
        L52:
            throw r3
        L53:
            if (r0 == 0) goto L5c
        L55:
            r0.close()
            goto L5c
        L59:
            if (r0 == 0) goto L5c
            goto L55
        L5c:
            java.lang.String r3 = r4.toString()
            r2.setDataSource(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.component.ttvideo.player.TTPlayerClient.setDataSource(android.content.Context, android.net.Uri):void");
    }

    public void setDataSource(FileDescriptor fileDescriptor) throws IOException {
        ParcelFileDescriptor parcelFileDescriptorDup = ParcelFileDescriptor.dup(fileDescriptor);
        try {
            this.mPlayer.setDataSourceFd(parcelFileDescriptorDup.getFd());
            parcelFileDescriptorDup.close();
        } catch (Throwable th) {
            if (parcelFileDescriptorDup != null) {
                parcelFileDescriptorDup.close();
            }
            throw th;
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void setDataSource(FileDescriptor fileDescriptor, long j2, long j3) throws IllegalStateException, IOException, IllegalArgumentException {
        setDataSource(fileDescriptor);
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET, j2);
                this.mPlayer.setLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_DECLARE_LENGTH, j3);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void setDataSource(String str) throws IllegalStateException, SecurityException, IOException, IllegalArgumentException {
        if (str.toLowerCase(Locale.US).indexOf("://") <= 0) {
            this.mUri = "file://" + str;
        } else {
            this.mUri = str;
        }
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setDataSource(this.mUri);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayerClient
    public void setDataSource(IMediaDataSource iMediaDataSource) throws IllegalStateException, SecurityException, IOException, IllegalArgumentException {
        if (iMediaDataSource != null) {
            this.mReadLock.lock();
            try {
                if (isValid()) {
                    this.mPlayer.setDataSource(iMediaDataSource);
                }
                return;
            } finally {
                this.mReadLock.unlock();
            }
        }
        throw new IllegalArgumentException("null mediadatasource pointer.");
    }
}
