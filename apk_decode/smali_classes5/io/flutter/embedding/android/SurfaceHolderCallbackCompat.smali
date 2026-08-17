.class public Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallback;,
        Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackPreApi26;,
        Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackApi26AndUp;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceHolderCallbackCompat"


# instance fields
.field final alphaCallback:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final flutterSurfaceView:Lio/flutter/embedding/android/FlutterSurfaceView;

.field private final innerCallback:Landroid/view/SurfaceHolder$Callback;

.field final lifecycleCallback:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallback;

.field private final shouldSetAlpha:Z


# direct methods
.method public constructor <init>(Landroid/view/SurfaceHolder$Callback;Lio/flutter/embedding/android/FlutterSurfaceView;Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V
    .locals 2
    .param p3    # Lio/flutter/embedding/engine/renderer/FlutterRenderer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$1;-><init>(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->alphaCallback:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 10
    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v1, 0x1a

    .line 14
    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    iput-boolean v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->shouldSetAlpha:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    new-instance v1, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackPreApi26;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackPreApi26;-><init>(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    new-instance v1, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackApi26AndUp;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackApi26AndUp;-><init>(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;)V

    .line 33
    .line 34
    .line 35
    :goto_1
    iput-object v1, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->lifecycleCallback:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallback;

    .line 36
    .line 37
    iput-object p1, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->innerCallback:Landroid/view/SurfaceHolder$Callback;

    .line 38
    .line 39
    iput-object p3, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 40
    .line 41
    iput-object p2, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->flutterSurfaceView:Lio/flutter/embedding/android/FlutterSurfaceView;

    .line 42
    .line 43
    const-string p1, "SurfaceHolderCallbackCompat"

    .line 44
    .line 45
    const-string p3, "SurfaceHolderCallbackCompat()"

    .line 46
    .line 47
    invoke-static {p1, p3}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public static synthetic access$000(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;)Lio/flutter/embedding/engine/renderer/FlutterRenderer;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$002(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;Lio/flutter/embedding/engine/renderer/FlutterRenderer;)Lio/flutter/embedding/engine/renderer/FlutterRenderer;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$100(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;)Lio/flutter/embedding/android/FlutterSurfaceView;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->flutterSurfaceView:Lio/flutter/embedding/android/FlutterSurfaceView;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public onAttachToRenderer(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->lifecycleCallback:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallback;->onAttachToRenderer(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onDetachFromRenderer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->lifecycleCallback:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallback;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallback;->onDetachFromRenderer()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->lifecycleCallback:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallback;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallback;->onResume()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->innerCallback:Landroid/view/SurfaceHolder$Callback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->innerCallback:Landroid/view/SurfaceHolder$Callback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->innerCallback:Landroid/view/SurfaceHolder$Callback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "SurfaceHolderCallbackCompat"

    .line 2
    .line 3
    const-string v0, "SurfaceHolder.Callback2.surfaceRedrawNeeded()"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    const-string p1, "SurfaceHolderCallbackCompat"

    .line 2
    .line 3
    const-string v0, "SurfaceHolder.Callback2.surfaceRedrawNeededAsync()"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$2;

    .line 14
    .line 15
    invoke-direct {v0, p0, p2}, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$2;-><init>(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->addIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
