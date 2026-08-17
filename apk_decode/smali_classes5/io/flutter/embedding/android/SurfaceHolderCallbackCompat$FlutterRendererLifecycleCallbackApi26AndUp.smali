.class Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackApi26AndUp;
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
    name = "FlutterRendererLifecycleCallbackApi26AndUp"
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackApi26AndUp;->this$0:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackApi26AndUp;->this$0:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->access$002(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;Lio/flutter/embedding/engine/renderer/FlutterRenderer;)Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onDetachFromRenderer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackApi26AndUp;->this$0:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->access$002(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;Lio/flutter/embedding/engine/renderer/FlutterRenderer;)Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method
