.class public final synthetic Lio/flutter/embedding/engine/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/flutter/embedding/engine/b;->a:J

    return-void
.end method


# virtual methods
.method public final onImageHeader(II)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/flutter/embedding/engine/b;->a:J

    invoke-static {v0, v1, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->b(JII)V

    return-void
.end method
