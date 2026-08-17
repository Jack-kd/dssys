.class Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;

.field final synthetic val$finishDrawing:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$2;->this$0:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;

    .line 2
    .line 3
    iput-object p2, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$2;->val$finishDrawing:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFlutterUiDisplayed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$2;->val$finishDrawing:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$2;->this$0:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;

    .line 7
    .line 8
    invoke-static {v0}, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->access$000(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;)Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$2;->this$0:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;

    .line 15
    .line 16
    invoke-static {v0}, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->access$000(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;)Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->removeIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onFlutterUiNoLongerDisplayed()V
    .locals 0

    return-void
.end method
