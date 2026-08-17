.class public final synthetic Lio/flutter/embedding/engine/image/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final synthetic a:Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/image/d;->a:Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;

    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/image/d;->a:Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;

    invoke-static {v0, p1, p2, p3}, Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;->a(Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    return-void
.end method
