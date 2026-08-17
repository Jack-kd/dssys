.class Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackPreApi26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlutterRendererLifecycleCallbackPreApi26"
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackPreApi26;->this$0:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAttachToRenderer(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackPreApi26;->this$0:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;

    .line 2
    .line 3
    invoke-static {v0}, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->access$000(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;)Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackPreApi26;->this$0:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;

    .line 10
    .line 11
    invoke-static {v0}, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->access$000(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;)Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackPreApi26;->this$0:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;

    .line 16
    .line 17
    iget-object v1, v1, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->alphaCallback:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->removeIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackPreApi26;->this$0:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;

    .line 23
    .line 24
    invoke-static {v0, p1}, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->access$002(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;Lio/flutter/embedding/engine/renderer/FlutterRenderer;)Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onDetachFromRenderer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackPreApi26;->this$0:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;

    .line 2
    .line 3
    invoke-static {v0}, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->access$100(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;)Lio/flutter/embedding/android/FlutterSurfaceView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackPreApi26;->this$0:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;

    .line 12
    .line 13
    invoke-static {v0}, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->access$000(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;)Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackPreApi26;->this$0:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;

    .line 20
    .line 21
    invoke-static {v0}, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->access$000(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;)Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackPreApi26;->this$0:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;

    .line 26
    .line 27
    iget-object v1, v1, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->alphaCallback:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->removeIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackPreApi26;->this$0:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-static {v0, v1}, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->access$002(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;Lio/flutter/embedding/engine/renderer/FlutterRenderer;)Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackPreApi26;->this$0:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;

    .line 2
    .line 3
    invoke-static {v0}, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->access$000(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;)Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackPreApi26;->this$0:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;

    .line 10
    .line 11
    invoke-static {v0}, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->access$000(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;)Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackPreApi26;->this$0:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;

    .line 16
    .line 17
    iget-object v1, v1, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->alphaCallback:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->addIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
