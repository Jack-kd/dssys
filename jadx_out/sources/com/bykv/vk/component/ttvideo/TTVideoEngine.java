package com.bykv.vk.component.ttvideo;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.bykv.vk.component.ttvideo.DataLoaderHelper;
import com.bykv.vk.component.ttvideo.log.VideoEventEngineUploader;
import com.bykv.vk.component.ttvideo.log.d;
import com.bykv.vk.component.ttvideo.log.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.component.ttvideo.player.TTPlayerConfiger;
import com.bykv.vk.component.ttvideo.utils.EngineThreadPool;
import com.bykv.vk.component.ttvideo.utils.Error;
import com.bykv.vk.component.ttvideo.utils.TTVideoEngineLog;
import com.kuaishou.weapon.p0.t;
import java.io.FileDescriptor;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes3.dex */
public class TTVideoEngine implements com.bykv.vk.component.ttvideo.log.a, MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnVideoSizeChangedListener {
    public static final int ENGINE_STATE_ERROR = 4;
    public static final int ENGINE_STATE_PLAYER_RUNNING = 3;
    public static final int ENGINE_STATE_RELEASE = 5;
    public static final int ENGINE_STATE_UNKNOWN = 0;
    public static final int LOAD_STATE_ERROR = 3;
    public static final int LOAD_STATE_PLAYABLE = 1;
    public static final int LOAD_STATE_STALLED = 2;
    public static final int LOAD_STATE_UNKNOWN = 0;
    public static final int PLAYBACK_STATE_ERROR = 3;
    public static final int PLAYBACK_STATE_PAUSED = 2;
    public static final int PLAYBACK_STATE_PLAYING = 1;
    public static final int PLAYBACK_STATE_STOPPED = 0;
    public static final int PLAYER_BUFFERING_DATA_OF_MILLISECONDS = 118;
    public static final int PLAYER_BUFFERING_TIMEOUT = 11;
    public static final int PLAYER_MAX_BUFFERING_DATA_OF_MILLISECONDS = 202;
    public static final int PLAYER_NETWORK_TIMEOUT = 12;
    public static final int PLAYER_OPTION_ENABLE_DATALOADER = 160;
    public static final int PLAYER_OPTION_NOTIFY_BUFFERING_DIRECTLY = 322;
    public static final int PLAYER_OPTION_OUTPUT_LOG = 472;
    public static final int PLAYER_TIME_BASE = 1000000;
    public static final int PLAYER_TYPE_OS = 1;
    public static final int PLAYER_TYPE_OWN = 0;

    /* renamed from: l0, reason: collision with root package name */
    private static boolean f28708l0;

    /* renamed from: B, reason: collision with root package name */
    VideoEngineSimpleCallback f28710B;

    /* renamed from: C, reason: collision with root package name */
    SeekCompletionListener f28711C;

    /* renamed from: D, reason: collision with root package name */
    private final Context f28712D;

    /* renamed from: E, reason: collision with root package name */
    private Surface f28713E;

    /* renamed from: F, reason: collision with root package name */
    private SurfaceHolder f28714F;

    /* renamed from: G, reason: collision with root package name */
    private final com.bykv.vk.component.ttvideo.log.b f28715G;

    /* renamed from: H, reason: collision with root package name */
    private MediaPlayer f28716H;

    /* renamed from: I, reason: collision with root package name */
    private Handler f28717I;

    /* renamed from: K, reason: collision with root package name */
    private boolean f28719K;

    /* renamed from: a, reason: collision with root package name */
    private boolean f28735a;

    /* renamed from: b, reason: collision with root package name */
    private int f28737b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f28739c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f28741d;

    /* renamed from: e, reason: collision with root package name */
    private int f28743e;

    /* renamed from: e0, reason: collision with root package name */
    private long f28744e0;

    /* renamed from: f0, reason: collision with root package name */
    private long f28746f0;

    /* renamed from: g0, reason: collision with root package name */
    private FileDescriptor f28748g0;

    /* renamed from: h, reason: collision with root package name */
    private boolean f28749h;

    /* renamed from: h0, reason: collision with root package name */
    private com.bykv.vk.component.ttvideo.b f28750h0;

    /* renamed from: i, reason: collision with root package name */
    private boolean f28751i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f28753j;

    /* renamed from: o, reason: collision with root package name */
    private boolean f28760o;

    /* renamed from: p, reason: collision with root package name */
    private boolean f28761p;

    /* renamed from: v, reason: collision with root package name */
    private boolean f28767v;

    /* renamed from: x, reason: collision with root package name */
    private int f28769x;

    /* renamed from: y, reason: collision with root package name */
    private String f28770y;

    /* renamed from: z, reason: collision with root package name */
    private int f28771z;

    /* renamed from: f, reason: collision with root package name */
    private boolean f28745f = true;

    /* renamed from: g, reason: collision with root package name */
    private boolean f28747g = true;

    /* renamed from: k, reason: collision with root package name */
    private int f28755k = 0;

    /* renamed from: l, reason: collision with root package name */
    private int f28757l = 0;

    /* renamed from: m, reason: collision with root package name */
    private int f28758m = 0;

    /* renamed from: n, reason: collision with root package name */
    private int f28759n = 0;

    /* renamed from: q, reason: collision with root package name */
    private int f28762q = 0;

    /* renamed from: r, reason: collision with root package name */
    private int f28763r = 30;

    /* renamed from: s, reason: collision with root package name */
    private int f28764s = 5000;

    /* renamed from: u, reason: collision with root package name */
    private int f28766u = 1;

    /* renamed from: w, reason: collision with root package name */
    private boolean f28768w = true;

    /* renamed from: A, reason: collision with root package name */
    private final HashMap<String, String> f28709A = new HashMap<>();

    /* renamed from: J, reason: collision with root package name */
    private int f28718J = 0;

    /* renamed from: L, reason: collision with root package name */
    private float f28720L = -1.0f;

    /* renamed from: M, reason: collision with root package name */
    private boolean f28721M = false;

    /* renamed from: N, reason: collision with root package name */
    private String f28722N = "";

    /* renamed from: O, reason: collision with root package name */
    private boolean f28723O = false;

    /* renamed from: P, reason: collision with root package name */
    private String f28724P = "";

    /* renamed from: Q, reason: collision with root package name */
    private int f28725Q = 0;

    /* renamed from: R, reason: collision with root package name */
    private boolean f28726R = false;

    /* renamed from: S, reason: collision with root package name */
    private Error f28727S = null;

    /* renamed from: T, reason: collision with root package name */
    private boolean f28728T = false;

    /* renamed from: U, reason: collision with root package name */
    private boolean f28729U = false;

    /* renamed from: V, reason: collision with root package name */
    private int f28730V = -1;

    /* renamed from: X, reason: collision with root package name */
    private boolean f28732X = false;

    /* renamed from: Y, reason: collision with root package name */
    private final Map<String, String> f28733Y = new HashMap();

    /* renamed from: Z, reason: collision with root package name */
    private final List<String> f28734Z = new ArrayList();

    /* renamed from: a0, reason: collision with root package name */
    private String f28736a0 = null;

    /* renamed from: b0, reason: collision with root package name */
    private boolean f28738b0 = false;

    /* renamed from: c0, reason: collision with root package name */
    private long f28740c0 = 0;

    /* renamed from: d0, reason: collision with root package name */
    private int f28742d0 = -1;

    /* renamed from: i0, reason: collision with root package name */
    private int f28752i0 = 0;

    /* renamed from: j0, reason: collision with root package name */
    private int f28754j0 = 0;

    /* renamed from: k0, reason: collision with root package name */
    private int f28756k0 = 5000;

    /* renamed from: t, reason: collision with root package name */
    private boolean f28765t = f28708l0;

    /* renamed from: W, reason: collision with root package name */
    private final com.bykv.vk.component.ttvideo.utils.a f28731W = new com.bykv.vk.component.ttvideo.utils.a();

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ MediaPlayer f28772a;

        public a(TTVideoEngine tTVideoEngine, MediaPlayer mediaPlayer) {
            this.f28772a = mediaPlayer;
        }

        @Override // java.lang.Runnable
        public void run() {
            MediaPlayer mediaPlayer = this.f28772a;
            if (mediaPlayer != null) {
                try {
                    mediaPlayer.release();
                } catch (Exception unused) {
                }
            }
        }
    }

    public class b extends Handler {
        public b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            VideoEngineSimpleCallback videoEngineSimpleCallback;
            super.handleMessage(message);
            if (message.what == 10) {
                String str = (String) message.obj;
                long j2 = message.arg1;
                if (TTVideoEngine.this.f28737b == 5 || !TTVideoEngine.this.f28733Y.containsKey(str) || (videoEngineSimpleCallback = TTVideoEngine.this.f28710B) == null) {
                    return;
                }
                videoEngineSimpleCallback.onMDLHitCache(str, j2);
            }
        }
    }

    public static class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private final Map<String, String> f28774a;

        /* renamed from: b, reason: collision with root package name */
        private final WeakReference<TTVideoEngine> f28775b;

        public c(TTVideoEngine tTVideoEngine, Map<String, String> map) {
            this.f28775b = new WeakReference<>(tTVideoEngine);
            this.f28774a = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            Map<String, String> map;
            TTVideoEngine tTVideoEngine = this.f28775b.get();
            if (tTVideoEngine == null || tTVideoEngine.f28737b == 5 || (map = this.f28774a) == null || map.size() <= 0) {
                return;
            }
            for (String str : this.f28774a.keySet()) {
                String str2 = this.f28774a.get(str);
                long cacheFileSizeByFilePath = !TextUtils.isEmpty(str2) ? TTVideoEngine.getCacheFileSizeByFilePath(str, str2) : TTVideoEngine.getCacheFileSize(str);
                if (tTVideoEngine.f28717I != null) {
                    int i2 = (int) cacheFileSizeByFilePath;
                    tTVideoEngine.f28717I.sendMessage(Message.obtain(tTVideoEngine.f28717I, 10, i2, i2, str));
                }
            }
        }
    }

    public TTVideoEngine(Context context, int i2) {
        this.f28712D = context;
        this.f28771z = i2;
        this.f28715G = new d(context, this);
        e.instance.a(context);
    }

    public static void addTask(PreloaderURLItem preloaderURLItem) {
        DataLoaderHelper.getDataLoader().addTask(preloaderURLItem);
    }

    public static void cancelAllPreloadTasks() {
        DataLoaderHelper.getDataLoader().cancelAllTasks();
    }

    public static void cancelPreloadTask(String str) {
        DataLoaderHelper.getDataLoader().cancelTask(str);
    }

    public static void clearAllCaches() {
        DataLoaderHelper.getDataLoader().clearAllCaches();
    }

    public static void closeDataLoader() {
        DataLoaderHelper.getDataLoader().close();
    }

    private void d() {
        DataLoaderHelper.getDataLoader()._addEngine(this, this.f28736a0);
    }

    private void e() {
        DataLoaderHelper.getDataLoader()._removeEngine(this, this.f28736a0);
        Iterator<String> it = this.f28733Y.keySet().iterator();
        while (it.hasNext()) {
            DataLoaderHelper.getDataLoader()._removePlayTask(it.next());
        }
        n();
    }

    private int f() {
        MediaPlayer mediaPlayer = this.f28716H;
        if (mediaPlayer == null) {
            return 0;
        }
        return mediaPlayer.getCurrentPosition();
    }

    public static void forceRemoveCacheFile(String str) {
        DataLoaderHelper.getDataLoader().removeCacheFile(str, true);
    }

    private void g() {
        if (this.f28717I != null) {
            return;
        }
        this.f28717I = new b(getLooper());
    }

    public static long getCacheFileSize(String str) {
        return DataLoaderHelper.getDataLoader().getCacheSize(str);
    }

    public static long getCacheFileSizeByFilePath(String str, String str2) {
        return DataLoaderHelper.getDataLoader().getCacheSizeByFilePath(str, str2);
    }

    public static DataLoaderHelper.DataLoaderCacheInfo getCacheInfoByFilePath(String str, String str2) {
        return DataLoaderHelper.getDataLoader().getCacheInfoByFilePath(str, str2);
    }

    public static String getEngineVersion() {
        return "1.0.2";
    }

    public static Looper getLooper() {
        return Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper();
    }

    private void h() {
        if (this.f28715G != null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.f28740c0 = jCurrentTimeMillis;
            this.f28715G.a(jCurrentTimeMillis, (String) null);
        }
    }

    private void i() {
        if (this.f28735a) {
            return;
        }
        this.f28715G.a();
        this.f28735a = true;
    }

    private void j() {
        com.bykv.vk.component.ttvideo.utils.a aVar = this.f28731W;
        if (aVar != null) {
            aVar.a();
        }
        if (this.f28721M || this.f28723O || this.f28748g0 != null) {
            h();
            b(this.f28721M ? this.f28722N : this.f28724P);
            a(this.f28721M ? this.f28722N : this.f28724P, this.f28709A);
        }
    }

    private void k() {
        if (this.f28728T) {
            e(1);
        }
        i();
        if (!this.f28760o) {
            this.f28760o = true;
        }
        this.f28738b0 = true;
        a(1, -1);
        com.bykv.vk.component.ttvideo.utils.a aVar = this.f28731W;
        if (aVar != null) {
            aVar.d();
        }
        if (this.f28726R) {
            if (this.f28743e != 0 && isSystemPlayer()) {
                a(this.f28743e);
            }
            this.f28726R = false;
        }
        if (this.f28718J != 0 && isSystemPlayer()) {
            a(this.f28718J);
        }
        this.f28718J = 0;
        this.f28725Q = 0;
        VideoEngineSimpleCallback videoEngineSimpleCallback = this.f28710B;
        if (videoEngineSimpleCallback != null) {
            videoEngineSimpleCallback.onRenderStart(this);
        }
    }

    private void l() {
        if (p()) {
            if (this.f28721M || this.f28723O || this.f28748g0 != null) {
                h();
                a(this.f28721M ? this.f28722N : this.f28724P, this.f28709A);
                return;
            }
            return;
        }
        if (this.f28732X || (this.f28755k == 0 && this.f28740c0 == 0)) {
            h();
            com.bykv.vk.component.ttvideo.utils.a aVar = this.f28731W;
            if (aVar != null) {
                aVar.a();
            }
        }
        o();
    }

    private void m() {
        this.f28728T = false;
        this.f28729U = false;
        this.f28749h = false;
        this.f28709A.clear();
        a(true, 6);
        MediaPlayer mediaPlayer = this.f28716H;
        if (mediaPlayer != null) {
            mediaPlayer.setSurface(null);
            this.f28716H.reset();
        }
        this.f28735a = false;
        this.f28760o = false;
        this.f28761p = false;
        this.f28726R = false;
        this.f28715G.reset();
    }

    private void n() {
        this.f28733Y.clear();
        this.f28736a0 = null;
    }

    private void o() {
        Objects.toString(this.f28716H);
        MediaPlayer mediaPlayer = this.f28716H;
        if (mediaPlayer == null || !this.f28728T) {
            return;
        }
        mediaPlayer.setScreenOnWhilePlaying(this.f28768w);
        int i2 = this.f28769x;
        if (i2 != 0) {
            this.f28716H.setWakeMode(this.f28712D, i2);
        }
        if (!this.f28749h) {
            this.f28751i = false;
            return;
        }
        this.f28716H.setIntOption(100, this.f28718J);
        this.f28716H.start();
        com.bykv.vk.component.ttvideo.utils.a aVar = this.f28731W;
        if (aVar != null && this.f28735a) {
            aVar.d();
        }
        if (this.f28716H.getIntOption(62, -100) == 0 && !this.f28760o && (this.f28755k == 0 || this.f28732X)) {
            k();
        } else {
            e(1);
        }
    }

    private boolean p() {
        int i2 = this.f28755k;
        if ((i2 == 0 || i2 == 3) && !this.f28749h) {
            return true;
        }
        return (this.f28716H == null || !isSystemPlayer() || this.f28749h) ? false : true;
    }

    public static void removeCacheFile(String str) {
        DataLoaderHelper.getDataLoader().removeCacheFile(str, false);
    }

    public static void setCacheInfoLists(String[] strArr, long[] jArr) {
        DataLoaderHelper.getDataLoader().setCacheInfoLists(strArr, jArr);
    }

    public static void setIntValue(int i2, int i3) {
        DataLoaderHelper.getDataLoader().setIntValue(i2, i3);
    }

    public static void setStringValue(int i2, String str) {
        DataLoaderHelper.getDataLoader().setStringValue(i2, str);
    }

    public static void setVideoEventUploader(VideoEventEngineUploader videoEventEngineUploader) {
        e.instance.a(videoEventEngineUploader);
        DataLoaderHelper.getDataLoader().setEngineUploader(videoEventEngineUploader);
    }

    public static void startDataLoader(Context context) {
        DataLoaderHelper.getDataLoader().setContext(context);
        DataLoaderHelper.getDataLoader().start();
        f28708l0 = true;
    }

    public int getBufferingType() {
        return this.f28730V;
    }

    public int getCurrentPlaybackTime() {
        int i2 = this.f28737b;
        if (i2 == 3) {
            return f();
        }
        if (i2 == 4) {
            return this.f28743e;
        }
        return -1;
    }

    public int getCurrentPlaybackTimeAsync() {
        return isSystemPlayer() ? getCurrentPlaybackTime() : this.f28742d0;
    }

    public int getDuration() {
        return this.f28758m;
    }

    public int getLoadState() {
        return this.f28757l;
    }

    public int getLoadedProgress() {
        return this.f28759n;
    }

    public int getPlaybackState() {
        return this.f28755k;
    }

    public boolean isLooping() {
        return this.f28767v;
    }

    public boolean isMute() {
        MediaPlayer mediaPlayer = this.f28716H;
        return mediaPlayer != null ? mediaPlayer.isMute() : this.f28719K;
    }

    public boolean isSystemPlayer() {
        MediaPlayer mediaPlayer = this.f28716H;
        return mediaPlayer == null ? this.f28771z == 1 : mediaPlayer.isOSPlayer();
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayer.OnBufferingUpdateListener
    public void onBufferingUpdate(MediaPlayer mediaPlayer, int i2) {
        if (this.f28721M) {
            i2 = 100;
        }
        this.f28759n = i2;
        VideoEngineSimpleCallback videoEngineSimpleCallback = this.f28710B;
        if (videoEngineSimpleCallback != null) {
            videoEngineSimpleCallback.onBufferingUpdate(this, i2);
        }
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        if (!this.f28767v) {
            this.f28732X = true;
            e(0);
            com.bykv.vk.component.ttvideo.utils.a aVar = this.f28731W;
            if (aVar != null) {
                aVar.e();
                this.f28715G.b(this.f28731W.b());
            }
            this.f28715G.a(3);
            this.f28735a = false;
            this.f28760o = false;
            this.f28761p = false;
            this.f28743e = 0;
            this.f28726R = false;
            this.f28753j = false;
        }
        VideoEngineSimpleCallback videoEngineSimpleCallback = this.f28710B;
        if (videoEngineSimpleCallback != null) {
            videoEngineSimpleCallback.onCompletion(this);
        }
        if (mediaPlayer != null && mediaPlayer.isOSPlayer()) {
            this.f28749h = false;
        }
        this.f28718J = 0;
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i2, int i3) {
        com.bykv.vk.component.ttvideo.utils.a aVar = this.f28731W;
        if (aVar != null) {
            aVar.e();
        }
        e(3);
        a(3, -1);
        Error error = new Error((mediaPlayer == null || !mediaPlayer.isOSPlayer()) ? Error.VideoOwnPlayer : Error.VideoOSPlayer, i2, i3, null);
        this.f28727S = error;
        b(error);
        return true;
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayer.OnInfoListener
    public boolean onInfo(MediaPlayer mediaPlayer, int i2, int i3) {
        if (i2 == -268435438) {
            this.f28742d0 = i3;
        } else if (i2 == 3) {
            k();
        } else if (i2 == 801) {
            c(false);
        } else if (i2 == 251658248) {
            d(i3);
        } else if (i2 == 251658252) {
            c();
        } else if (i2 == 701) {
            c(i3);
        } else if (i2 == 702) {
            b(i3);
        }
        return false;
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        if (this.f28729U) {
            return;
        }
        if (mediaPlayer == null) {
            TTVideoEngineLog.e("TTVideoEngine", "onPrepared mediaPlayer is null!");
            return;
        }
        mediaPlayer.getIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CODEC_ID, -1);
        this.f28727S = null;
        int duration = mediaPlayer.getDuration();
        this.f28758m = duration;
        this.f28749h = true;
        this.f28715G.e(duration);
        VideoEngineSimpleCallback videoEngineSimpleCallback = this.f28710B;
        if (videoEngineSimpleCallback != null) {
            videoEngineSimpleCallback.onPrepared(this);
        }
        if ((this.f28751i || !this.f28728T) && this.f28745f) {
            return;
        }
        mediaPlayer.start();
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayer.OnSeekCompleteListener
    public void onSeekComplete(MediaPlayer mediaPlayer) {
        c(true);
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i2, int i3) {
        VideoEngineSimpleCallback videoEngineSimpleCallback = this.f28710B;
        if (videoEngineSimpleCallback != null) {
            videoEngineSimpleCallback.onVideoSizeChanged(this, i2, i3);
        }
    }

    public void pause() {
        this.f28728T = false;
        if (!this.f28749h) {
            this.f28751i = true;
            e(2);
            return;
        }
        MediaPlayer mediaPlayer = this.f28716H;
        if (mediaPlayer != null) {
            mediaPlayer.pause();
            e(2);
        }
        com.bykv.vk.component.ttvideo.utils.a aVar = this.f28731W;
        if (aVar != null) {
            aVar.e();
        }
    }

    public void play() {
        if (this.f28737b == 5) {
            TTVideoEngineLog.e("TTVideoEngine", "already released, return");
            return;
        }
        boolean z2 = true;
        this.f28728T = true;
        this.f28729U = false;
        this.f28741d = false;
        if (!this.f28745f && this.f28740c0 <= 0 && !this.f28749h) {
            z2 = false;
        }
        a(z2);
        this.f28732X = false;
    }

    public void prepare() {
        this.f28745f = false;
        this.f28728T = false;
        this.f28729U = false;
        this.f28741d = false;
        a(false);
        this.f28732X = false;
    }

    public void release() {
        this.f28729U = true;
        this.f28728T = false;
        a(false, 1);
        MediaPlayer mediaPlayer = this.f28716H;
        this.f28716H = null;
        if (mediaPlayer != null) {
            EngineThreadPool.a().execute(new a(this, mediaPlayer));
        }
        e();
        this.f28737b = 5;
    }

    public void reset() {
        b();
    }

    public void seekTo(int i2, SeekCompletionListener seekCompletionListener) {
        this.f28711C = seekCompletionListener;
        a(i2);
    }

    public void setDataSource(FileDescriptor fileDescriptor, long j2, long j3) {
        this.f28744e0 = j2;
        this.f28746f0 = j3;
        b();
        this.f28748g0 = fileDescriptor;
    }

    public void setDirectURL(String str) {
        a(str);
    }

    public void setDirectUrlUseDataLoader(String str, String str2) {
        setDirectUrlUseDataLoader(str, str2, this.f28770y);
    }

    public void setIntOption(int i2, int i3) {
        if (i2 == 11) {
            this.f28763r = i3;
            MediaPlayer mediaPlayer = this.f28716H;
            if (mediaPlayer != null) {
                mediaPlayer.setIntOption(81, i3);
                return;
            }
            return;
        }
        if (i2 == 12) {
            this.f28764s = i3;
            MediaPlayer mediaPlayer2 = this.f28716H;
            if (mediaPlayer2 != null) {
                mediaPlayer2.setIntOption(9, i3 * 1000000);
                return;
            }
            return;
        }
        if (i2 == 118) {
            this.f28754j0 = i3;
            MediaPlayer mediaPlayer3 = this.f28716H;
            if (mediaPlayer3 != null) {
                mediaPlayer3.setIntOption(86, i3);
                return;
            }
            return;
        }
        if (i2 == 160) {
            this.f28765t = i3 > 0;
            return;
        }
        if (i2 == 202) {
            this.f28756k0 = i3;
            MediaPlayer mediaPlayer4 = this.f28716H;
            if (mediaPlayer4 != null) {
                mediaPlayer4.setIntOption(110, i3);
                return;
            }
            return;
        }
        if (i2 == 322) {
            this.f28752i0 = i3;
            MediaPlayer mediaPlayer5 = this.f28716H;
            if (mediaPlayer5 != null) {
                mediaPlayer5.setIntOption(211, i3);
                return;
            }
            return;
        }
        if (i2 != 472) {
            return;
        }
        this.f28762q = i3;
        MediaPlayer mediaPlayer6 = this.f28716H;
        if (mediaPlayer6 != null) {
            mediaPlayer6.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_OUTPUT_LOG, i3);
        }
        DataLoaderHelper.getDataLoader().setIntValue(512, i3);
    }

    public void setIsMute(boolean z2) {
        String.format("setIsMute:%s", Boolean.valueOf(z2));
        this.f28719K = z2;
        b(z2);
    }

    public void setLocalURL(String str) {
        if (str != null && !str.equals(this.f28722N)) {
            String.format("set local url:%s", str);
            b();
        }
        this.f28753j = false;
        this.f28721M = true;
        this.f28722N = str;
    }

    public void setLooping(boolean z2) {
        this.f28767v = z2;
        MediaPlayer mediaPlayer = this.f28716H;
        if (mediaPlayer != null) {
            mediaPlayer.setLooping(z2);
        }
    }

    public void setMaxRetryCount(int i2) {
        this.f28766u = i2;
    }

    public void setScreenOnWhilePlaying(boolean z2) {
        this.f28768w = z2;
        MediaPlayer mediaPlayer = this.f28716H;
        if (mediaPlayer != null) {
            mediaPlayer.setScreenOnWhilePlaying(z2);
        }
    }

    public void setStartTime(int i2) {
        this.f28718J = i2;
    }

    public void setSurface(Surface surface) {
        a(surface);
    }

    public void setSurfaceHolder(SurfaceHolder surfaceHolder) {
        Surface surface;
        Objects.toString(surfaceHolder);
        toString();
        this.f28714F = surfaceHolder;
        if (surfaceHolder == null) {
            surface = null;
        } else {
            com.bykv.vk.component.ttvideo.b bVar = new com.bykv.vk.component.ttvideo.b(this);
            this.f28750h0 = bVar;
            this.f28714F.addCallback(bVar);
            surface = this.f28714F.getSurface();
        }
        a(surface);
    }

    public void setTrackVolume(float f2) {
        MediaPlayer mediaPlayer = this.f28716H;
        if (mediaPlayer == null) {
            return;
        }
        if (f2 < 0.0f) {
            f2 = 0.0f;
        }
        if (f2 > 1.0f) {
            f2 = 1.0f;
        }
        this.f28720L = f2;
        mediaPlayer.setVolume(f2, f2);
    }

    public void setVideoEngineSimpleCallback(VideoEngineSimpleCallback videoEngineSimpleCallback) {
        this.f28710B = videoEngineSimpleCallback;
    }

    public void setWakeMode(int i2) {
        this.f28769x = i2;
        MediaPlayer mediaPlayer = this.f28716H;
        if (mediaPlayer != null) {
            mediaPlayer.setWakeMode(this.f28712D, i2);
        }
    }

    public void start() {
        this.f28728T = true;
        this.f28729U = false;
        this.f28741d = false;
        a(true);
        this.f28732X = false;
    }

    public void stop() {
        this.f28728T = false;
        this.f28738b0 = false;
        this.f28729U = true;
        a(true, 0);
        e();
    }

    @Override // com.bykv.vk.component.ttvideo.log.a
    public Map versionInfo() {
        HashMap map = new HashMap();
        map.put(t.f31282x, TTPlayerConfiger.getValue(14, ""));
        map.put("sdk_version", "1.0.2");
        map.put("sv", "5.6");
        return map;
    }

    private String a(String str, String str2, long j2, String[] strArr, String str3) {
        String str_proxyUrl = DataLoaderHelper.getDataLoader()._proxyUrl(str, str2, j2, strArr, str3);
        if (!TextUtils.isEmpty(str_proxyUrl)) {
            this.f28736a0 = TextUtils.isEmpty(str2) ? str : str2;
            if (!TextUtils.isEmpty(str)) {
                this.f28733Y.put(str, str3);
            }
            d();
        }
        return str_proxyUrl;
    }

    private void b() {
        this.f28721M = false;
        this.f28723O = false;
        MediaPlayer mediaPlayer = this.f28716H;
        if (mediaPlayer != null && mediaPlayer.getPlayerType() == 0) {
            this.f28716H.release();
            this.f28716H = null;
        }
        m();
        this.f28737b = 0;
        this.f28725Q = 0;
        this.f28724P = null;
        this.f28722N = null;
        this.f28770y = null;
        this.f28748g0 = null;
        this.f28738b0 = false;
        this.f28735a = false;
        this.f28760o = false;
        this.f28761p = false;
        this.f28731W.c();
        this.f28732X = false;
        this.f28740c0 = 0L;
        this.f28742d0 = -1;
        this.f28734Z.clear();
        this.f28741d = false;
        this.f28747g = true;
        this.f28743e = 0;
    }

    private void c() {
        MediaPlayer mediaPlayer = this.f28716H;
        if (mediaPlayer == null) {
            return;
        }
        if (!this.f28761p) {
            this.f28761p = true;
        }
        if (!this.f28735a && mediaPlayer.getIntOption(62, -100) == 0 && !this.f28751i && this.f28728T && this.f28745f) {
            k();
        }
    }

    private void d(int i2) {
        this.f28715G.a();
        if (this.f28739c) {
            this.f28739c = false;
        }
        VideoEngineSimpleCallback videoEngineSimpleCallback = this.f28710B;
        if (videoEngineSimpleCallback != null) {
            videoEngineSimpleCallback.onRenderSeekComplete(i2);
        }
    }

    private void e(int i2) {
        if (this.f28755k != i2) {
            this.f28755k = i2;
            VideoEngineSimpleCallback videoEngineSimpleCallback = this.f28710B;
            if (videoEngineSimpleCallback != null) {
                videoEngineSimpleCallback.onPlaybackStateChanged(this, i2);
            }
        }
    }

    public void setDirectUrlUseDataLoader(String str, String str2, String str3) {
        setDirectUrlUseDataLoader(str, str2, str3, (String) null);
    }

    private void b(int i2) {
        com.bykv.vk.component.ttvideo.utils.a aVar = this.f28731W;
        if (aVar != null && this.f28735a) {
            aVar.d();
        }
        this.f28730V = -1;
        VideoEngineSimpleCallback videoEngineSimpleCallback = this.f28710B;
        if (videoEngineSimpleCallback != null) {
            videoEngineSimpleCallback.onBufferEnd(i2);
        }
        a(1, i2);
    }

    private void c(int i2) {
        com.bykv.vk.component.ttvideo.utils.a aVar = this.f28731W;
        if (aVar != null) {
            aVar.e();
        }
        boolean z2 = this.f28738b0;
        VideoEngineSimpleCallback videoEngineSimpleCallback = this.f28710B;
        if (videoEngineSimpleCallback != null) {
            videoEngineSimpleCallback.onBufferStart(i2, z2 ? 1 : 0, 0);
        }
        a(2, i2);
    }

    public void a() {
        VideoEngineSimpleCallback videoEngineSimpleCallback = this.f28710B;
        if (videoEngineSimpleCallback != null) {
            videoEngineSimpleCallback.onUseMDLCacheEnd();
        }
    }

    public void setDirectUrlUseDataLoader(String str, String str2, String str3, String str4) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        setDirectUrlUseDataLoader(new String[]{str}, str2, str3, str4);
    }

    private void b(Error error) {
        if (this.f28741d) {
            this.f28737b = 0;
            return;
        }
        int iF = f();
        if (!this.f28726R) {
            int i2 = this.f28718J;
            if (i2 != 0) {
                this.f28743e = i2;
                this.f28718J = 0;
            } else if (!isSystemPlayer() || (isSystemPlayer() && this.f28749h)) {
                int i3 = this.f28758m;
                if (i3 <= 0 || iF - i3 <= -1000) {
                    this.f28743e = iF;
                } else {
                    this.f28743e = 0;
                }
            }
        }
        MediaPlayer mediaPlayer = this.f28716H;
        if (mediaPlayer != null && mediaPlayer.isOSPlayer()) {
            this.f28716H.release();
            this.f28716H = null;
            this.f28745f = true;
            a(error);
            return;
        }
        this.f28737b = 4;
        if (this.f28725Q >= this.f28766u) {
            TTVideoEngineLog.e("TTVideoEngine", "videoEngine retry failed");
            a(error);
            return;
        }
        if (error.notNeedRetry()) {
            TTVideoEngineLog.e("TTVideoEngine", "not need retry");
            a(error);
            return;
        }
        this.f28726R = true;
        if (this.f28725Q == this.f28766u - 1 || error.needFallbackOS()) {
            MediaPlayer mediaPlayer2 = this.f28716H;
            if (mediaPlayer2 != null) {
                mediaPlayer2.release();
                this.f28716H = null;
            }
            this.f28771z = 1;
        }
        this.f28715G.a(error, 0, 0);
        VideoEngineSimpleCallback videoEngineSimpleCallback = this.f28710B;
        if (videoEngineSimpleCallback != null) {
            videoEngineSimpleCallback.onRetry(this.f28771z);
        }
        this.f28725Q++;
        a(this.f28721M ? this.f28722N : this.f28724P, this.f28709A);
    }

    private void c(boolean z2) {
        com.bykv.vk.component.ttvideo.utils.a aVar = this.f28731W;
        if (aVar != null && z2 && this.f28735a) {
            aVar.d();
        }
        SeekCompletionListener seekCompletionListener = this.f28711C;
        if (seekCompletionListener != null) {
            seekCompletionListener.onCompletion(z2);
            this.f28711C = null;
        }
    }

    public void a(int i2) {
        com.bykv.vk.component.ttvideo.utils.a aVar;
        if (this.f28716H == null || !this.f28753j) {
            c(false);
            return;
        }
        if (!this.f28739c && (aVar = this.f28731W) != null) {
            aVar.e();
        }
        this.f28739c = true;
        this.f28716H.seekTo(i2);
    }

    public void setDirectUrlUseDataLoader(String[] strArr, String str, String str2, String str3) {
        if (strArr == null || strArr.length == 0 || TextUtils.isEmpty(strArr[0])) {
            TTVideoEngineLog.e("TTVideoEngine", "invalid urls list, it is empty");
            return;
        }
        this.f28770y = str2;
        if (TextUtils.isEmpty(str) || !this.f28765t) {
            a(strArr[0]);
            return;
        }
        n();
        String strA = a(str, str2, 0L, strArr, str3);
        if (!this.f28734Z.contains(str)) {
            this.f28734Z.add(str);
        }
        if (TextUtils.isEmpty(strA)) {
            setDirectURL(strArr[0]);
        } else {
            setDirectURL(strA);
        }
    }

    private void a(int i2, int i3) {
        int i4 = this.f28757l;
        if (i4 != i2) {
            if (i2 == 2 && this.f28735a && !this.f28739c && i4 != 3) {
                this.f28730V = i3;
            }
            this.f28757l = i2;
            VideoEngineSimpleCallback videoEngineSimpleCallback = this.f28710B;
            if (videoEngineSimpleCallback != null) {
                if (this.f28728T || i2 != 3) {
                    videoEngineSimpleCallback.onLoadStateChanged(this, i2);
                }
            }
        }
    }

    private void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.f28747g) {
            this.f28747g = false;
            this.f28715G.a(str, "");
        }
        this.f28715G.a(str);
    }

    public void a(Surface surface) {
        this.f28713E = surface;
        MediaPlayer mediaPlayer = this.f28716H;
        if (mediaPlayer != null) {
            mediaPlayer.setSurface(surface);
        }
    }

    public void b(boolean z2) {
        MediaPlayer mediaPlayer = this.f28716H;
        if (mediaPlayer != null) {
            mediaPlayer.setIsMute(z2);
        }
    }

    private void a(Error error) {
        com.bykv.vk.component.ttvideo.utils.a aVar = this.f28731W;
        if (aVar != null) {
            this.f28715G.b(aVar.b());
        }
        this.f28715G.a(error, 0);
        this.f28753j = false;
        VideoEngineSimpleCallback videoEngineSimpleCallback = this.f28710B;
        if (videoEngineSimpleCallback != null) {
            videoEngineSimpleCallback.onError(error);
        }
        this.f28725Q = 0;
    }

    public void a(String str) {
        if (str != null && !str.equals(this.f28724P)) {
            String.format("set direct url:%s", str);
            b();
        }
        this.f28753j = false;
        this.f28723O = true;
        this.f28724P = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x0197  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.lang.String r13, java.util.HashMap r14) {
        /*
            Method dump skipped, instructions count: 464
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.component.ttvideo.TTVideoEngine.a(java.lang.String, java.util.HashMap):void");
    }

    public void a(boolean z2) {
        this.f28753j = true;
        this.f28751i = false;
        g();
        if (z2) {
            this.f28715G.d(10);
        }
        int i2 = this.f28737b;
        if (i2 != 0) {
            if (i2 == 3) {
                l();
                return;
            } else if (i2 != 4) {
                return;
            }
        }
        j();
    }

    private void a(boolean z2, int i2) {
        com.bykv.vk.component.ttvideo.utils.a aVar;
        int i3 = this.f28737b;
        if (i3 == 0 || i3 == 3) {
            this.f28741d = true;
        }
        if (this.f28716H != null && z2 && !isSystemPlayer() && this.f28749h) {
            this.f28716H.stop();
        }
        com.bykv.vk.component.ttvideo.utils.a aVar2 = this.f28731W;
        if (aVar2 != null) {
            aVar2.e();
        }
        if (this.f28755k != 0 && (aVar = this.f28731W) != null) {
            this.f28715G.b(aVar.b());
        }
        this.f28715G.c(i2);
        e(0);
        this.f28735a = false;
        this.f28760o = false;
        this.f28761p = false;
        this.f28740c0 = 0L;
        this.f28725Q = 0;
    }
}
