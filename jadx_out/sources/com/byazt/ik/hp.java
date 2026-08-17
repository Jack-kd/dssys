package com.byazt.ik;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Pair;
import android.util.SparseArray;
import com.byazt.pu.TTDownloadField;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.Loader;
import com.bykv.vk.openvk.api.proto.Manager;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.AdConfig;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.ExitInstallListener;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
import com.bytedance.sdk.openadsdk.mediation.bridge.init.MediationInitCLassLoader;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 110, 28})
/* loaded from: classes.dex */
public abstract class hp {
    public TTAdSdk.InitCallback hp;

    /* renamed from: l, reason: collision with root package name */
    public final AtomicBoolean f21127l = new AtomicBoolean(false);

    @com.byazt.kj.hp(hp = {0, 1, 110, 170})
    /* renamed from: com.byazt.ik.hp$hp, reason: collision with other inner class name */
    public static abstract class AbstractC0272hp<T> {
        private AbstractC0272hp() {
        }

        public abstract void hp(l<T> lVar, int i2);
    }

    @com.byazt.kj.hp(hp = {0, 1, 110, MediaPlayer.MEDIA_PLAYER_ADAPTIVE_WORK_AROUND_MODE})
    public class j implements Function<SparseArray<Object>, Object> {
        private j() {
        }

        @Override // java.util.function.Function
        public Object apply(SparseArray<Object> sparseArray) {
            SparseArray sparseArray2;
            if (sparseArray == null || (sparseArray2 = (SparseArray) com.byazt.xi.jx.hp(sparseArray).l().objectValue(-99999979, SparseArray.class)) == null) {
                return null;
            }
            ValueSet valueSetL = com.byazt.xi.jx.hp((SparseArray<Object>) sparseArray2).l();
            Result resultL = com.byazt.xi.l.hp().hp(valueSetL.intValue(-999900)).hp(valueSetL.stringValue(-999901)).hp(valueSetL.booleanValue(-999903)).hp(com.byazt.xi.jx.hp((SparseArray<Object>) valueSetL.objectValue(-999902, SparseArray.class)).l()).l();
            if (resultL.isSuccess()) {
                hp.this.hp(1, resultL);
            }
            hp.this.l(resultL);
            return null;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 110, MediaPlayer.MEDIA_PLAYER_OPTION_AE_SRC_PEAK})
    public static abstract class jx implements TTAdManager {
        public volatile Manager hp;

        /* renamed from: j, reason: collision with root package name */
        public volatile boolean f21129j;
        public volatile boolean jx;

        /* renamed from: l, reason: collision with root package name */
        public volatile Manager f21130l;

        /* renamed from: w, reason: collision with root package name */
        public Map<l<Manager>, Object> f21131w = new WeakHashMap();

        @com.byazt.kj.hp(hp = {0, 1, 110, 765})
        /* renamed from: com.byazt.ik.hp$jx$1, reason: invalid class name */
        public class AnonymousClass1 extends AbstractC0272hp<Loader> {
            public Loader hp;
            public final /* synthetic */ SoftReference jx;

            /* renamed from: l, reason: collision with root package name */
            public final l<Manager> f21133l;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(SoftReference softReference) {
                super();
                this.jx = softReference;
                this.f21133l = new l<Manager>() { // from class: com.byazt.ik.hp.jx.1.1
                    @Override // com.byazt.ik.hp.l
                    public void hp(Manager manager) {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        anonymousClass1.hp = manager.createLoader((Context) anonymousClass1.jx.get());
                    }
                };
            }

            @Override // com.byazt.ik.hp.AbstractC0272hp
            public void hp(final l<Loader> lVar, int i2) {
                Loader loader = this.hp;
                if (loader != null) {
                    lVar.hp(loader);
                } else {
                    jx.this.call(new l<Manager>() { // from class: com.byazt.ik.hp.jx.1.2
                        @Override // com.byazt.ik.hp.l
                        public void hp(Manager manager) {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            jx.this.hp(anonymousClass1.f21133l);
                            AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                            anonymousClass12.hp = manager.createLoader((Context) anonymousClass12.jx.get());
                            lVar.hp(AnonymousClass1.this.hp);
                        }
                    }, i2 + 10000);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void call(final l<Manager> lVar, final int i2) {
            if (com.byazt.ik.w.hp()) {
                return;
            }
            if (this.hp == null) {
                if (!this.jx && i2 > 10000) {
                    throw new IllegalStateException("广告SDK未Ready, 请在load(请求广告）之前，先调用init and start方法，以避免无法请求广告");
                }
                com.byazt.wq.hp.hp().hp(new Runnable() { // from class: com.byazt.ik.hp.jx.7
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (jx.this.hp != null) {
                                lVar.hp(jx.this.hp);
                                return;
                            }
                            a.j("_tt_ad_sdk_", "Not ready, no manager: " + i2);
                        } catch (Throwable th) {
                            a.j("_tt_ad_sdk_", "Unexpected manager call error: " + th.getMessage());
                            jx.this.hp(th);
                        }
                    }
                });
                return;
            }
            try {
                lVar.hp(this.hp);
            } catch (Throwable th) {
                a.j("_tt_ad_sdk_", "Unexpected manager call error: " + th.getMessage());
                hp(th);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T> T l(Manager manager, Class<T> cls, Bundle bundle) {
            Function<SparseArray<Object>, Object> functionHp;
            if (com.byazt.ik.w.hp()) {
                return null;
            }
            SparseArray<Object> sparseArray = com.byazt.xi.jx.hp(3).hp(9, cls).hp(10, bundle).hp(-99999987, 6).hp(-99999985, cls).l().sparseArray();
            if (!(manager instanceof com.byazt.ik.jx) || (functionHp = ((com.byazt.ik.jx) manager).hp(1)) == null) {
                return null;
            }
            return (T) functionHp.apply(sparseArray);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdManager
        public TTAdNative createAdNative(Context context) {
            if (com.byazt.ik.w.hp()) {
                return null;
            }
            return new w(new AnonymousClass1(new SoftReference(context))).hp();
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdManager
        public String getBiddingToken(AdSlot adSlot) {
            return getBiddingToken(adSlot, false, adSlot.getAdType() > 0 ? adSlot.getAdType() : adSlot.getNativeAdType());
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdManager
        public <T> T getExtra(final Class<T> cls, final Bundle bundle) {
            if (com.byazt.ik.w.hp()) {
                return null;
            }
            if (this.hp != null) {
                return (T) l(hp(bundle), cls, bundle);
            }
            call(new l<Manager>() { // from class: com.byazt.ik.hp.jx.4
                @Override // com.byazt.ik.hp.l
                public void hp(Manager manager) {
                    jx.l(jx.this.hp(bundle), cls, bundle);
                }
            }, 6);
            return null;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdManager
        public String getPluginVersion() {
            return this.hp != null ? this.hp.values().stringValue(12) : "";
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdManager
        public String getSDKVersion() {
            return "7.6.4.3";
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdManager
        public int getThemeStatus() {
            if (this.hp != null) {
                return this.hp.values().intValue(11);
            }
            return 0;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdManager
        public Bundle handleEvent(Bundle bundle) {
            Function<SparseArray<Object>, Object> functionHp;
            ValueSet valueSetL = com.byazt.xi.jx.hp().hp(20, bundle).hp(-99999987, 19).hp(-99999985, Bundle.class).l();
            if ((this.hp instanceof com.byazt.ik.jx) && (functionHp = ((com.byazt.ik.jx) this.hp).hp(1)) != null) {
                Object objApply = functionHp.apply(valueSetL.sparseArray());
                if (objApply instanceof Bundle) {
                    return (Bundle) objApply;
                }
            }
            return null;
        }

        public Object hp(Object obj) {
            return obj;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdManager
        public void register(final Object obj) {
            if (com.byazt.ik.w.hp()) {
                return;
            }
            call(new l<Manager>() { // from class: com.byazt.ik.hp.jx.2
                @Override // com.byazt.ik.hp.l
                public void hp(Manager manager) {
                    Function<SparseArray<Object>, Object> functionHp;
                    SparseArray<Object> sparseArray = com.byazt.xi.jx.hp(2).hp(8, jx.this.hp(obj)).hp(-99999987, 4).hp(-99999985, Void.class).l().sparseArray();
                    if (!(manager instanceof com.byazt.ik.jx) || (functionHp = ((com.byazt.ik.jx) manager).hp(1)) == null) {
                        return;
                    }
                    functionHp.apply(sparseArray);
                }
            }, 4);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdManager
        public void requestPermissionIfNecessary(final Context context) {
            if (com.byazt.ik.w.hp()) {
                return;
            }
            call(new l<Manager>() { // from class: com.byazt.ik.hp.jx.5
                @Override // com.byazt.ik.hp.l
                public void hp(Manager manager) {
                    Function<SparseArray<Object>, Object> functionHp;
                    SparseArray<Object> sparseArray = com.byazt.xi.jx.hp(2).hp(7, context).hp(-99999987, 3).hp(-99999985, Void.class).l().sparseArray();
                    if (!(manager instanceof com.byazt.ik.jx) || (functionHp = ((com.byazt.ik.jx) manager).hp(1)) == null) {
                        return;
                    }
                    functionHp.apply(sparseArray);
                }
            }, 3);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdManager
        public void setThemeStatus(final int i2) {
            if (com.byazt.ik.w.hp()) {
                return;
            }
            call(new l<Manager>() { // from class: com.byazt.ik.hp.jx.6
                @Override // com.byazt.ik.hp.l
                public void hp(Manager manager) {
                    Function<SparseArray<Object>, Object> functionHp;
                    ValueSet valueSetL = com.byazt.xi.jx.hp().hp(11, i2).hp(-99999987, 1).hp(-99999985, Void.class).l();
                    if (!(manager instanceof com.byazt.ik.jx) || (functionHp = ((com.byazt.ik.jx) manager).hp(1)) == null) {
                        return;
                    }
                    functionHp.apply(valueSetL.sparseArray());
                }
            }, 1);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdManager
        public boolean tryShowInstallDialogWhenExit(Activity activity, ExitInstallListener exitInstallListener) {
            if (com.byazt.ik.w.hp()) {
                return false;
            }
            HashMap map = new HashMap();
            map.put(TTDownloadField.TT_ACTIVITY, activity);
            map.put(TTDownloadField.TT_EXIT_INSTALL_LISTENER, new com.byazt.hg.hp(exitInstallListener));
            Object objApply = com.byazt.wp.jx.instance(TTAppContextHolder.getContext()).apply(com.byazt.xi.jx.hp(2).hp(0, map).hp(-99999987, 0).hp(-99999985, Boolean.class).l().sparseArray());
            if (objApply == null) {
                return false;
            }
            return ((Boolean) objApply).booleanValue();
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdManager
        public void unregister(final Object obj) {
            if (com.byazt.ik.w.hp()) {
                return;
            }
            call(new l<Manager>() { // from class: com.byazt.ik.hp.jx.3
                @Override // com.byazt.ik.hp.l
                public void hp(Manager manager) {
                    Function<SparseArray<Object>, Object> functionHp;
                    Object lVar = obj;
                    if (com.byazt.vd.l.checkType(lVar)) {
                        lVar = new com.byazt.vd.l(obj);
                    }
                    SparseArray<Object> sparseArray = com.byazt.xi.jx.hp(2).hp(8, lVar).hp(-99999987, 5).hp(-99999985, Void.class).l().sparseArray();
                    if (!(manager instanceof com.byazt.ik.jx) || (functionHp = ((com.byazt.ik.jx) manager).hp(1)) == null) {
                        return;
                    }
                    functionHp.apply(sparseArray);
                }
            }, 5);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdManager
        public String getBiddingToken(AdSlot adSlot, boolean z2, int i2) {
            Function<SparseArray<Object>, Object> functionHp;
            if (com.byazt.ik.w.hp()) {
                return null;
            }
            if (i2 <= 0) {
                i2 = adSlot.getAdType() > 0 ? adSlot.getAdType() : adSlot.getNativeAdType();
            }
            ValueSet valueSetL = com.byazt.xi.jx.hp(com.byazt.ta.l.hp(adSlot)).hp(13, z2).hp(14, i2).hp(-99999987, 2).hp(-99999985, String.class).l();
            if ((this.hp instanceof com.byazt.ik.jx) && (functionHp = ((com.byazt.ik.jx) this.hp).hp(1)) != null) {
                Object objApply = functionHp.apply(valueSetL.sparseArray());
                if (objApply instanceof String) {
                    return (String) objApply;
                }
            }
            return null;
        }

        public void hp(Throwable th) {
        }

        public void hp(boolean z2) {
            this.jx = z2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void hp(Manager manager, boolean z2) {
            if (com.byazt.ik.w.hp()) {
                return;
            }
            this.f21129j = z2;
            this.hp = manager;
            if (!z2) {
                this.f21130l = manager;
            }
            if (this.hp == null || !z2) {
                return;
            }
            try {
                Iterator<l<Manager>> it = this.f21131w.keySet().iterator();
                while (it.hasNext()) {
                    it.next().hp(this.hp);
                }
            } catch (Exception unused) {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void hp(l<Manager> lVar) {
            if (com.byazt.ik.w.hp() || this.f21129j) {
                return;
            }
            this.f21131w.put(lVar, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Manager hp(Bundle bundle) {
            if (((bundle == null || !bundle.containsKey("layerType")) ? 0 : bundle.getInt("layerType")) == 1 && this.f21130l != null) {
                return this.f21130l;
            }
            return this.hp;
        }
    }

    public interface l<T> {
        void hp(T t2);
    }

    public void hp(int i2, Result result) {
    }

    public abstract boolean hp(Context context, com.byazt.xi.jx jxVar);

    public abstract com.byazt.dw.jx j();

    public abstract jx jx();

    public abstract void l(Context context, com.byazt.xi.jx jxVar);

    public abstract boolean l();

    public boolean l(Context context, AdConfig adConfig, TTAdSdk.InitCallback initCallback) {
        return false;
    }

    @com.byazt.kj.hp(hp = {0, 1, 110, MediaPlayer.MEDIA_PLAYER_OPTION_PRE_DECODE_AUTO_PAUSE})
    public static class w extends com.byazt.pv.hp {
        public AbstractC0272hp<Loader> hp;

        public w(AbstractC0272hp<Loader> abstractC0272hp) {
            this.hp = abstractC0272hp;
        }

        private void hp(l<Loader> lVar, int i2) {
            a.l("_tt_ad_sdk_", "load ad slot type: ".concat(String.valueOf(i2)));
            this.hp.hp(lVar, i2);
        }

        @Override // com.byazt.pv.hp
        public void a(final ValueSet valueSet, final Function<SparseArray<Object>, Object> function) {
            hp(new l<Loader>() { // from class: com.byazt.ik.hp.w.8
                @Override // com.byazt.ik.hp.l
                public void hp(Loader loader) {
                    ValueSet valueSet2 = valueSet;
                    loader.load(8, com.byazt.xi.jx.hp(valueSet2 != null ? valueSet2.sparseArray() : new SparseArray<>()).hp(1, function).l(), null);
                }
            }, 8);
        }

        @Override // com.byazt.pv.hp
        public void eb(final ValueSet valueSet, final Function<SparseArray<Object>, Object> function) {
            hp(new l<Loader>() { // from class: com.byazt.ik.hp.w.9
                @Override // com.byazt.ik.hp.l
                public void hp(Loader loader) {
                    ValueSet valueSet2 = valueSet;
                    loader.load(5, com.byazt.xi.jx.hp(valueSet2 != null ? valueSet2.sparseArray() : new SparseArray<>()).hp(2, true).hp(1, function).l(), null);
                }
            }, 5);
        }

        @Override // com.byazt.pv.hp
        public void j(final ValueSet valueSet, final Function<SparseArray<Object>, Object> function) {
            hp(new l<Loader>() { // from class: com.byazt.ik.hp.w.5
                @Override // com.byazt.ik.hp.l
                public void hp(Loader loader) {
                    ValueSet valueSet2 = valueSet;
                    loader.load(1, com.byazt.xi.jx.hp(valueSet2 != null ? valueSet2.sparseArray() : new SparseArray<>()).hp(1, function).l(), null);
                }
            }, 1);
        }

        @Override // com.byazt.pv.hp
        public void jx(final ValueSet valueSet, final Function<SparseArray<Object>, Object> function) {
            hp(new l<Loader>() { // from class: com.byazt.ik.hp.w.4
                @Override // com.byazt.ik.hp.l
                public void hp(Loader loader) {
                    ValueSet valueSet2 = valueSet;
                    loader.load(9, com.byazt.xi.jx.hp(valueSet2 != null ? valueSet2.sparseArray() : new SparseArray<>()).hp(1, function).l(), null);
                }
            }, 9);
        }

        @Override // com.byazt.pv.hp
        public void l(final ValueSet valueSet, final Function<SparseArray<Object>, Object> function) {
            hp(new l<Loader>() { // from class: com.byazt.ik.hp.w.3
                @Override // com.byazt.ik.hp.l
                public void hp(Loader loader) {
                    ValueSet valueSet2 = valueSet;
                    loader.load(6, com.byazt.xi.jx.hp(valueSet2 != null ? valueSet2.sparseArray() : new SparseArray<>()).hp(1, function).l(), null);
                }
            }, 6);
        }

        @Override // com.byazt.pv.hp
        public void q(final ValueSet valueSet, final Function<SparseArray<Object>, Object> function) {
            hp(new l<Loader>() { // from class: com.byazt.ik.hp.w.2
                @Override // com.byazt.ik.hp.l
                public void hp(Loader loader) {
                    ValueSet valueSet2 = valueSet;
                    loader.load(1, com.byazt.xi.jx.hp(valueSet2 != null ? valueSet2.sparseArray() : new SparseArray<>()).hp(2, true).hp(1, function).l(), null);
                }
            }, 1);
        }

        @Override // com.byazt.pv.hp
        public void s(final ValueSet valueSet, final Function<SparseArray<Object>, Object> function) {
            hp(new l<Loader>() { // from class: com.byazt.ik.hp.w.10
                @Override // com.byazt.ik.hp.l
                public void hp(Loader loader) {
                    ValueSet valueSet2 = valueSet;
                    loader.load(9, com.byazt.xi.jx.hp(valueSet2 != null ? valueSet2.sparseArray() : new SparseArray<>()).hp(2, true).hp(1, function).l(), null);
                }
            }, 9);
        }

        @Override // com.byazt.pv.hp
        public void w(final ValueSet valueSet, final Function<SparseArray<Object>, Object> function) {
            hp(new l<Loader>() { // from class: com.byazt.ik.hp.w.7
                @Override // com.byazt.ik.hp.l
                public void hp(Loader loader) {
                    ValueSet valueSet2 = valueSet;
                    loader.load(7, com.byazt.xi.jx.hp(valueSet2 != null ? valueSet2.sparseArray() : new SparseArray<>()).hp(1, function).l(), null);
                }
            }, 7);
        }

        @Override // com.byazt.pv.hp
        public void hp(final ValueSet valueSet, final Function<SparseArray<Object>, Object> function) {
            hp(new l<Loader>() { // from class: com.byazt.ik.hp.w.1
                @Override // com.byazt.ik.hp.l
                public void hp(Loader loader) {
                    ValueSet valueSet2 = valueSet;
                    loader.load(5, com.byazt.xi.jx.hp(valueSet2 != null ? valueSet2.sparseArray() : new SparseArray<>()).hp(1, function).l(), null);
                }
            }, 5);
        }

        @Override // com.byazt.pv.hp
        public void hp(final ValueSet valueSet, final Function<SparseArray<Object>, Object> function, final int i2) {
            hp(new l<Loader>() { // from class: com.byazt.ik.hp.w.6
                @Override // com.byazt.ik.hp.l
                public void hp(Loader loader) {
                    ValueSet valueSet2 = valueSet;
                    loader.load(3, com.byazt.xi.jx.hp(valueSet2 != null ? valueSet2.sparseArray() : new SparseArray<>()).hp(3, i2).hp(1, function).l(), null);
                }
            }, 3);
        }

        @Override // com.byazt.pv.hp
        public Pair<Integer, String> hp(Exception exc) {
            a.j("_tt_ad_sdk_", "Load ad failed: " + exc.getMessage());
            if ((exc instanceof IllegalStateException) && "广告SDK未Ready, 请在load(请求广告）之前，先调用init and start方法，以避免无法请求广告".equals(exc.getMessage())) {
                return new Pair<>(4208, exc.getMessage());
            }
            return new Pair<>(Integer.valueOf(TTAdConstant.INIT_FAILED_CREATE_INVOKE_FAILED), "Load ad failed: " + exc.getMessage());
        }
    }

    public void hp(Result result) {
    }

    public void l(Result result) {
        hp(result);
        if (!this.f21127l.compareAndSet(false, true)) {
            a.j("_tt_ad_sdk_", "finishInit callback already invoked, skip");
            return;
        }
        if (result.isSuccess()) {
            a.l("_tt_ad_sdk_", "init sdk success ");
            TTAdSdk.InitCallback initCallback = this.hp;
            if (initCallback != null) {
                initCallback.success();
            }
        } else {
            a.w("_tt_ad_sdk_", "int sdk failed, code: " + result.code() + ", message: " + result.message());
            TTAdSdk.InitCallback initCallback2 = this.hp;
            if (initCallback2 != null) {
                initCallback2.fail(result.code(), result.message() != null ? result.message() : "");
            }
        }
        this.hp = null;
    }

    public boolean hp() {
        return this.f21127l.get();
    }

    public void hp(final Context context, AdConfig adConfig, TTAdSdk.InitCallback initCallback) {
        if (com.byazt.ik.w.hp()) {
            if (initCallback != null) {
                initCallback.fail(4209, "init csj sdk fail, that only support android os >= android 7.0（API-24）");
                return;
            }
            return;
        }
        com.byazt.dw.j.instance().setBridgeFactory(j());
        if (l(context, adConfig, initCallback)) {
            this.hp = initCallback;
            this.f21127l.set(false);
            final com.byazt.xi.jx jxVarHp = com.byazt.xi.jx.hp(com.byazt.ta.hp.hp(adConfig));
            hp(adConfig, jxVarHp);
            jxVarHp.hp(1, SystemClock.elapsedRealtime());
            jxVarHp.hp(5, "main");
            jxVarHp.hp(4, true);
            jxVarHp.hp(6, 1000);
            jxVarHp.hp(10, 7643);
            jxVarHp.hp(11, "7.6.4.3");
            jxVarHp.hp(12, "com.byted.pangle");
            jxVarHp.hp(14, true);
            jxVarHp.hp(26, com.byazt.vx.jx.jx());
            jxVarHp.hp(16, com.byazt.dw.j.instance());
            jxVarHp.hp(17, com.byazt.wq.hp.hp().l());
            Thread threadCurrentThread = Thread.currentThread();
            jxVarHp.hp(2, threadCurrentThread.getName());
            jxVarHp.hp(3, threadCurrentThread.getPriority());
            jxVarHp.hp(15, new j());
            jxVarHp.hp(8301, new MediationInitCLassLoader());
            if (!hp(context, jxVarHp)) {
                com.byazt.wq.hp.hp().hp(new Runnable() { // from class: com.byazt.ik.hp.1
                    @Override // java.lang.Runnable
                    public void run() {
                        hp.this.l(context, jxVarHp);
                    }
                });
            }
            jx().hp(true);
        }
    }

    private void hp(AdConfig adConfig, com.byazt.xi.jx jxVar) {
        long j2;
        Map<String, Object> initExtra;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (adConfig == null || (initExtra = adConfig.getInitExtra()) == null) {
            j2 = jElapsedRealtime;
        } else {
            Object obj = initExtra.get("csj_b_st_ts");
            long jLongValue = obj instanceof Long ? ((Long) obj).longValue() : jElapsedRealtime;
            Object obj2 = initExtra.get("csj_c_i_ts");
            if (obj2 instanceof Long) {
                jElapsedRealtime = ((Long) obj2).longValue();
            }
            long j3 = jLongValue;
            j2 = jElapsedRealtime;
            jElapsedRealtime = j3;
        }
        jxVar.hp(25, jElapsedRealtime);
        jxVar.hp(24, j2);
    }

    public void hp(Manager manager, boolean z2) {
        a.l("_tt_ad_sdk_", "update manager");
        jx().hp(manager, z2);
        jx().register(com.byazt.dw.j.instance());
    }
}
