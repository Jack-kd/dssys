package io.flutter.plugin.platform;

import android.content.Context;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceControl;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import io.flutter.Log;
import io.flutter.embedding.android.AndroidTouchProcessor;
import io.flutter.embedding.android.FlutterView;
import io.flutter.embedding.android.MotionEventTracker;
import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.embedding.engine.FlutterOverlaySurface;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.embedding.engine.mutatorsstack.FlutterMutatorView;
import io.flutter.embedding.engine.mutatorsstack.FlutterMutatorsStack;
import io.flutter.embedding.engine.renderer.FlutterRenderer;
import io.flutter.embedding.engine.systemchannels.PlatformViewCreationRequest;
import io.flutter.embedding.engine.systemchannels.PlatformViewTouch;
import io.flutter.embedding.engine.systemchannels.PlatformViewsChannel2;
import io.flutter.plugin.editing.TextInputPlugin;
import io.flutter.view.AccessibilityBridge;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes5.dex */
public class PlatformViewsController2 implements PlatformViewsAccessibilityDelegate {
    private static final String TAG = "PlatformViewsController2";
    private AndroidTouchProcessor androidTouchProcessor;
    private Context context;
    private FlutterView flutterView;
    private PlatformViewsChannel2 platformViewsChannel;
    private PlatformViewRegistryImpl registry;

    @Nullable
    private TextInputPlugin textInputPlugin;
    private FlutterJNI flutterJNI = null;
    private Surface overlayerSurface = null;
    private SurfaceControl overlaySurfaceControl = null;
    final PlatformViewsChannel2.PlatformViewsHandler channelHandler = new PlatformViewsChannel2.PlatformViewsHandler() { // from class: io.flutter.plugin.platform.PlatformViewsController2.1
        @Override // io.flutter.embedding.engine.systemchannels.PlatformViewsChannel2.PlatformViewsHandler
        public void clearFocus(int i2) {
            PlatformView platformView = (PlatformView) PlatformViewsController2.this.platformViews.get(i2);
            if (platformView == null) {
                Log.e(PlatformViewsController2.TAG, "Clearing focus on an unknown view with id: " + i2);
                return;
            }
            View view = platformView.getView();
            if (view != null) {
                view.clearFocus();
                return;
            }
            Log.e(PlatformViewsController2.TAG, "Clearing focus on a null view with id: " + i2);
        }

        @Override // io.flutter.embedding.engine.systemchannels.PlatformViewsChannel2.PlatformViewsHandler
        public void createPlatformView(@NonNull PlatformViewCreationRequest platformViewCreationRequest) {
            PlatformViewsController2.this.createFlutterPlatformView(platformViewCreationRequest);
        }

        @Override // io.flutter.embedding.engine.systemchannels.PlatformViewsChannel2.PlatformViewsHandler
        public void dispose(int i2) {
            PlatformView platformView = (PlatformView) PlatformViewsController2.this.platformViews.get(i2);
            if (platformView == null) {
                Log.e(PlatformViewsController2.TAG, "Disposing unknown platform view with id: " + i2);
                return;
            }
            if (platformView.getView() != null) {
                View view = platformView.getView();
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(view);
                }
            }
            PlatformViewsController2.this.platformViews.remove(i2);
            try {
                platformView.dispose();
            } catch (RuntimeException e2) {
                Log.e(PlatformViewsController2.TAG, "Disposing platform view threw an exception", e2);
            }
            FlutterMutatorView flutterMutatorView = (FlutterMutatorView) PlatformViewsController2.this.platformViewParent.get(i2);
            if (flutterMutatorView != null) {
                flutterMutatorView.removeAllViews();
                flutterMutatorView.unsetOnDescendantFocusChangeListener();
                ViewGroup viewGroup2 = (ViewGroup) flutterMutatorView.getParent();
                if (viewGroup2 != null) {
                    viewGroup2.removeView(flutterMutatorView);
                }
                PlatformViewsController2.this.platformViewParent.remove(i2);
            }
        }

        @Override // io.flutter.embedding.engine.systemchannels.PlatformViewsChannel2.PlatformViewsHandler
        public boolean isSurfaceControlEnabled() {
            return PlatformViewsController2.this.isHcppEnabled();
        }

        @Override // io.flutter.embedding.engine.systemchannels.PlatformViewsChannel2.PlatformViewsHandler
        public void onTouch(@NonNull PlatformViewTouch platformViewTouch) {
            int i2 = platformViewTouch.viewId;
            float f2 = PlatformViewsController2.this.context.getResources().getDisplayMetrics().density;
            PlatformView platformView = (PlatformView) PlatformViewsController2.this.platformViews.get(i2);
            if (platformView == null) {
                Log.e(PlatformViewsController2.TAG, "Sending touch to an unknown view with id: " + i2);
                return;
            }
            View view = platformView.getView();
            if (view != null) {
                view.dispatchTouchEvent(PlatformViewsController2.this.toMotionEvent(f2, platformViewTouch));
                return;
            }
            Log.e(PlatformViewsController2.TAG, "Sending touch to a null view with id: " + i2);
        }

        @Override // io.flutter.embedding.engine.systemchannels.PlatformViewsChannel2.PlatformViewsHandler
        public void setDirection(int i2, int i3) {
            PlatformView platformView = (PlatformView) PlatformViewsController2.this.platformViews.get(i2);
            if (platformView == null) {
                Log.e(PlatformViewsController2.TAG, "Setting direction to an unknown view with id: " + i2);
                return;
            }
            View view = platformView.getView();
            if (view != null) {
                view.setLayoutDirection(i3);
                return;
            }
            Log.e(PlatformViewsController2.TAG, "Setting direction to a null view with id: " + i2);
        }
    };
    private final AccessibilityEventsDelegate accessibilityEventsDelegate = new AccessibilityEventsDelegate();
    private final SparseArray<PlatformView> platformViews = new SparseArray<>();
    private final SparseArray<FlutterMutatorView> platformViewParent = new SparseArray<>();
    private final ArrayList<SurfaceControl.Transaction> pendingTransactions = new ArrayList<>();
    private final ArrayList<SurfaceControl.Transaction> activeTransactions = new ArrayList<>();
    private final MotionEventTracker motionEventTracker = MotionEventTracker.getInstance();

    public static /* synthetic */ void a(PlatformViewsController2 platformViewsController2, int i2, View view, boolean z2) {
        if (z2) {
            platformViewsController2.platformViewsChannel.invokeViewFocused(i2);
            return;
        }
        TextInputPlugin textInputPlugin = platformViewsController2.textInputPlugin;
        if (textInputPlugin != null) {
            textInputPlugin.clearPlatformViewClient(i2);
        }
    }

    private void diposeAllViews() {
        while (this.platformViews.size() > 0) {
            this.channelHandler.dispose(this.platformViews.keyAt(0));
        }
    }

    private float getDisplayDensity() {
        return this.context.getResources().getDisplayMetrics().density;
    }

    private void lockInputConnection(@NonNull VirtualDisplayController virtualDisplayController) {
        TextInputPlugin textInputPlugin = this.textInputPlugin;
        if (textInputPlugin == null) {
            return;
        }
        textInputPlugin.lockPlatformViewInputConnection();
        virtualDisplayController.onInputConnectionLocked();
    }

    private void maybeInvokeOnFlutterViewAttached(PlatformView platformView) {
        FlutterView flutterView = this.flutterView;
        if (flutterView == null) {
            Log.i(TAG, "null flutterView");
        } else {
            platformView.onFlutterViewAttached(flutterView);
        }
    }

    private static MotionEvent.PointerCoords parsePointerCoords(Object obj, float f2) {
        List list = (List) obj;
        MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
        pointerCoords.orientation = (float) ((Double) list.get(0)).doubleValue();
        pointerCoords.pressure = (float) ((Double) list.get(1)).doubleValue();
        pointerCoords.size = (float) ((Double) list.get(2)).doubleValue();
        double d2 = f2;
        pointerCoords.toolMajor = (float) (((Double) list.get(3)).doubleValue() * d2);
        pointerCoords.toolMinor = (float) (((Double) list.get(4)).doubleValue() * d2);
        pointerCoords.touchMajor = (float) (((Double) list.get(5)).doubleValue() * d2);
        pointerCoords.touchMinor = (float) (((Double) list.get(6)).doubleValue() * d2);
        pointerCoords.x = (float) (((Double) list.get(7)).doubleValue() * d2);
        pointerCoords.y = (float) (((Double) list.get(8)).doubleValue() * d2);
        return pointerCoords;
    }

    private static List<MotionEvent.PointerCoords> parsePointerCoordsList(Object obj, float f2) {
        ArrayList arrayList = new ArrayList();
        Iterator it = ((List) obj).iterator();
        while (it.hasNext()) {
            arrayList.add(parsePointerCoords(it.next(), f2));
        }
        return arrayList;
    }

    private static MotionEvent.PointerProperties parsePointerProperties(Object obj) {
        List list = (List) obj;
        MotionEvent.PointerProperties pointerProperties = new MotionEvent.PointerProperties();
        pointerProperties.id = ((Integer) list.get(0)).intValue();
        pointerProperties.toolType = ((Integer) list.get(1)).intValue();
        return pointerProperties;
    }

    private static List<MotionEvent.PointerProperties> parsePointerPropertiesList(Object obj) {
        ArrayList arrayList = new ArrayList();
        Iterator it = ((List) obj).iterator();
        while (it.hasNext()) {
            arrayList.add(parsePointerProperties(it.next()));
        }
        return arrayList;
    }

    private int toLogicalPixels(double d2, float f2) {
        return (int) Math.round(d2 / f2);
    }

    private int toPhysicalPixels(double d2) {
        return (int) Math.round(d2 * getDisplayDensity());
    }

    private static void translateMotionEvent(MotionEvent motionEvent, MotionEvent.PointerCoords[] pointerCoordsArr) {
        if (pointerCoordsArr.length < 1) {
            return;
        }
        motionEvent.offsetLocation(pointerCoordsArr[0].x - motionEvent.getX(), pointerCoordsArr[0].y - motionEvent.getY());
    }

    private void unlockInputConnection(@NonNull VirtualDisplayController virtualDisplayController) {
        TextInputPlugin textInputPlugin = this.textInputPlugin;
        if (textInputPlugin == null) {
            return;
        }
        textInputPlugin.unlockPlatformViewInputConnection();
        virtualDisplayController.onInputConnectionUnlocked();
    }

    private static boolean validateDirection(int i2) {
        return i2 == 0 || i2 == 1;
    }

    @RequiresApi(34)
    public void applyTransactions() {
        SurfaceControl.Transaction transactionA = o.a();
        for (int i2 = 0; i2 < this.pendingTransactions.size(); i2++) {
            transactionA = transactionA.merge(s.a(this.pendingTransactions.get(i2)));
        }
        transactionA.apply();
        this.pendingTransactions.clear();
    }

    public void attach(@Nullable Context context, @NonNull DartExecutor dartExecutor) {
        if (this.context != null) {
            throw new AssertionError("A PlatformViewsController can only be attached to a single output target.\nattach was called while the PlatformViewsController was already attached.");
        }
        this.context = context;
        PlatformViewsChannel2 platformViewsChannel2 = new PlatformViewsChannel2(dartExecutor);
        this.platformViewsChannel = platformViewsChannel2;
        platformViewsChannel2.setPlatformViewsHandler(this.channelHandler);
    }

    @Override // io.flutter.plugin.platform.PlatformViewsAccessibilityDelegate
    public void attachAccessibilityBridge(@NonNull AccessibilityBridge accessibilityBridge) {
        this.accessibilityEventsDelegate.setAccessibilityBridge(accessibilityBridge);
    }

    public void attachTextInputPlugin(@NonNull TextInputPlugin textInputPlugin) {
        this.textInputPlugin = textInputPlugin;
    }

    public void attachToFlutterRenderer(@NonNull FlutterRenderer flutterRenderer) {
        this.androidTouchProcessor = new AndroidTouchProcessor(flutterRenderer, true);
    }

    public void attachToView(@NonNull FlutterView flutterView) {
        this.flutterView = flutterView;
        for (int i2 = 0; i2 < this.platformViewParent.size(); i2++) {
            this.flutterView.addView(this.platformViewParent.valueAt(i2));
        }
        for (int i3 = 0; i3 < this.platformViews.size(); i3++) {
            this.platformViews.valueAt(i3).onFlutterViewAttached(this.flutterView);
        }
    }

    public PlatformView createFlutterPlatformView(@NonNull PlatformViewCreationRequest platformViewCreationRequest) {
        PlatformViewFactory factory = this.registry.getFactory(platformViewCreationRequest.viewType);
        if (factory == null) {
            throw new IllegalStateException("Trying to create a platform view of unregistered type: " + platformViewCreationRequest.viewType);
        }
        PlatformView platformViewCreate = factory.create(this.context, platformViewCreationRequest.viewId, platformViewCreationRequest.params != null ? factory.getCreateArgsCodec().decodeMessage(platformViewCreationRequest.params) : null);
        View view = platformViewCreate.getView();
        if (view == null) {
            throw new IllegalStateException("PlatformView#getView() returned null, but an Android view reference was expected.");
        }
        view.setLayoutDirection(platformViewCreationRequest.direction);
        this.platformViews.put(platformViewCreationRequest.viewId, platformViewCreate);
        maybeInvokeOnFlutterViewAttached(platformViewCreate);
        return platformViewCreate;
    }

    @RequiresApi(34)
    public FlutterOverlaySurface createOverlaySurface() {
        if (this.overlayerSurface == null) {
            SurfaceControl.Builder builderA = p.a();
            builderA.setBufferSize(this.flutterView.getWidth(), this.flutterView.getHeight());
            builderA.setFormat(1);
            builderA.setName("Flutter Overlay Surface");
            builderA.setOpaque(false);
            builderA.setHidden(false);
            SurfaceControl surfaceControlBuild = builderA.build();
            SurfaceControl.Transaction transactionBuildReparentTransaction = this.flutterView.getRootSurfaceControl().buildReparentTransaction(surfaceControlBuild);
            transactionBuildReparentTransaction.setLayer(surfaceControlBuild, 1000);
            transactionBuildReparentTransaction.apply();
            this.overlayerSurface = q.a(surfaceControlBuild);
            this.overlaySurfaceControl = surfaceControlBuild;
        }
        return new FlutterOverlaySurface(0, this.overlayerSurface);
    }

    @RequiresApi(34)
    public SurfaceControl.Transaction createTransaction() {
        SurfaceControl.Transaction transactionA = o.a();
        this.pendingTransactions.add(transactionA);
        return transactionA;
    }

    public void destroyOverlaySurface() {
        Surface surface = this.overlayerSurface;
        if (surface != null) {
            surface.release();
            this.overlayerSurface = null;
            this.overlaySurfaceControl = null;
        }
    }

    @UiThread
    public void detach() {
        PlatformViewsChannel2 platformViewsChannel2 = this.platformViewsChannel;
        if (platformViewsChannel2 != null) {
            platformViewsChannel2.setPlatformViewsHandler(null);
        }
        destroyOverlaySurface();
        this.platformViewsChannel = null;
        this.context = null;
    }

    @Override // io.flutter.plugin.platform.PlatformViewsAccessibilityDelegate
    public void detachAccessibilityBridge() {
        this.accessibilityEventsDelegate.setAccessibilityBridge(null);
    }

    public void detachFromView() {
        for (int i2 = 0; i2 < this.platformViewParent.size(); i2++) {
            this.flutterView.removeView(this.platformViewParent.valueAt(i2));
        }
        destroyOverlaySurface();
        this.flutterView = null;
        for (int i3 = 0; i3 < this.platformViews.size(); i3++) {
            this.platformViews.valueAt(i3).onFlutterViewDetached();
        }
    }

    public void detachTextInputPlugin() {
        this.textInputPlugin = null;
    }

    @VisibleForTesting
    public void disposePlatformView(int i2) {
        this.channelHandler.dispose(i2);
    }

    @Override // io.flutter.plugin.platform.PlatformViewsAccessibilityDelegate
    @Nullable
    public View getPlatformViewById(int i2) {
        PlatformView platformView = this.platformViews.get(i2);
        if (platformView == null) {
            return null;
        }
        return platformView.getView();
    }

    public PlatformViewRegistry getRegistry() {
        return this.registry;
    }

    @RequiresApi(34)
    public void hideOverlaySurface() {
        if (this.overlaySurfaceControl == null) {
            return;
        }
        SurfaceControl.Transaction transactionA = o.a();
        transactionA.setVisibility(this.overlaySurfaceControl, false);
        transactionA.apply();
    }

    public void hidePlatformView(int i2) {
        if (initializePlatformViewIfNeeded(i2)) {
            this.platformViewParent.get(i2).setVisibility(8);
        }
    }

    @VisibleForTesting
    public boolean initializePlatformViewIfNeeded(final int i2) {
        PlatformView platformView = this.platformViews.get(i2);
        if (platformView == null) {
            return false;
        }
        if (this.platformViewParent.get(i2) != null) {
            return true;
        }
        View view = platformView.getView();
        if (view == null) {
            throw new IllegalStateException("PlatformView#getView() returned null, but an Android view reference was expected.");
        }
        if (view.getParent() != null) {
            throw new IllegalStateException("The Android view returned from PlatformView#getView() was already added to a parent view.");
        }
        Context context = this.context;
        FlutterMutatorView flutterMutatorView = new FlutterMutatorView(context, context.getResources().getDisplayMetrics().density, this.androidTouchProcessor);
        flutterMutatorView.setOnDescendantFocusChangeListener(new View.OnFocusChangeListener() { // from class: io.flutter.plugin.platform.A
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z2) {
                PlatformViewsController2.a(this.f50866b, i2, view2, z2);
            }
        });
        this.platformViewParent.put(i2, flutterMutatorView);
        view.setImportantForAccessibility(4);
        flutterMutatorView.addView(view);
        this.flutterView.addView(flutterMutatorView);
        return true;
    }

    public boolean isHcppEnabled() {
        FlutterJNI flutterJNI = this.flutterJNI;
        if (flutterJNI == null) {
            return false;
        }
        return flutterJNI.IsSurfaceControlEnabled();
    }

    public void onDetachedFromJNI() {
        diposeAllViews();
    }

    public void onDisplayPlatformView(int i2, int i3, int i4, int i5, int i6, int i7, int i8, @NonNull FlutterMutatorsStack flutterMutatorsStack) {
        if (initializePlatformViewIfNeeded(i2)) {
            FlutterMutatorView flutterMutatorView = this.platformViewParent.get(i2);
            flutterMutatorView.readyToDisplay(flutterMutatorsStack, i3, i4, i5, i6);
            flutterMutatorView.setVisibility(0);
            flutterMutatorView.bringToFront();
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i7, i8);
            View view = this.platformViews.get(i2).getView();
            if (view != null) {
                view.setLayoutParams(layoutParams);
                view.bringToFront();
            }
        }
    }

    @RequiresApi(34)
    public void onEndFrame() {
        SurfaceControl.Transaction transactionA = o.a();
        for (int i2 = 0; i2 < this.activeTransactions.size(); i2++) {
            transactionA = transactionA.merge(s.a(this.activeTransactions.get(i2)));
        }
        this.activeTransactions.clear();
        this.flutterView.invalidate();
        this.flutterView.getRootSurfaceControl().applyTransactionOnDraw(transactionA);
    }

    public void onPreEngineRestart() {
        diposeAllViews();
    }

    public void setFlutterJNI(FlutterJNI flutterJNI) {
        this.flutterJNI = flutterJNI;
    }

    public void setRegistry(@NonNull PlatformViewRegistry platformViewRegistry) {
        this.registry = (PlatformViewRegistryImpl) platformViewRegistry;
    }

    @RequiresApi(34)
    public void showOverlaySurface() {
        if (this.overlaySurfaceControl == null) {
            return;
        }
        SurfaceControl.Transaction transactionA = o.a();
        transactionA.setVisibility(this.overlaySurfaceControl, true);
        transactionA.apply();
    }

    public synchronized void swapTransactions() {
        try {
            this.activeTransactions.clear();
            for (int i2 = 0; i2 < this.pendingTransactions.size(); i2++) {
                this.activeTransactions.add(s.a(this.pendingTransactions.get(i2)));
            }
            this.pendingTransactions.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    @VisibleForTesting
    public MotionEvent toMotionEvent(float f2, PlatformViewTouch platformViewTouch) {
        MotionEvent motionEventPop = this.motionEventTracker.pop(MotionEventTracker.MotionEventId.from(platformViewTouch.motionEventId));
        MotionEvent.PointerCoords[] pointerCoordsArr = (MotionEvent.PointerCoords[]) parsePointerCoordsList(platformViewTouch.rawPointerCoords, f2).toArray(new MotionEvent.PointerCoords[platformViewTouch.pointerCount]);
        if (motionEventPop != null) {
            translateMotionEvent(motionEventPop, pointerCoordsArr);
            return motionEventPop;
        }
        return MotionEvent.obtain(platformViewTouch.downTime.longValue(), platformViewTouch.eventTime.longValue(), platformViewTouch.action, platformViewTouch.pointerCount, (MotionEvent.PointerProperties[]) parsePointerPropertiesList(platformViewTouch.rawPointerPropertiesList).toArray(new MotionEvent.PointerProperties[platformViewTouch.pointerCount]), pointerCoordsArr, platformViewTouch.metaState, platformViewTouch.buttonState, platformViewTouch.xPrecision, platformViewTouch.yPrecision, platformViewTouch.deviceId, platformViewTouch.edgeFlags, platformViewTouch.source, platformViewTouch.flags);
    }

    @Override // io.flutter.plugin.platform.PlatformViewsAccessibilityDelegate
    public boolean usesVirtualDisplay(int i2) {
        return false;
    }

    private int toLogicalPixels(double d2) {
        return toLogicalPixels(d2, getDisplayDensity());
    }
}
