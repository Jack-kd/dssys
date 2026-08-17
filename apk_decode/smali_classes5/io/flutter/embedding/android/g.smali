.class public final synthetic Lio/flutter/embedding/android/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/android/FlutterMeasureSpec$MeasureCallback;


# instance fields
.field public final synthetic a:Lio/flutter/embedding/android/FlutterImageView;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/embedding/android/FlutterImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/android/g;->a:Lio/flutter/embedding/android/FlutterImageView;

    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/g;->a:Lio/flutter/embedding/android/FlutterImageView;

    invoke-static {v0, p1, p2}, Lio/flutter/embedding/android/FlutterImageView;->a(Lio/flutter/embedding/android/FlutterImageView;II)V

    return-void
.end method
