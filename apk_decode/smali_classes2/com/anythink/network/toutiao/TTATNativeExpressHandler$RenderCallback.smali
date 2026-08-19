.class public interface abstract Lcom/anythink/network/toutiao/TTATNativeExpressHandler$RenderCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/toutiao/TTATNativeExpressHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RenderCallback"
.end annotation


# virtual methods
.method public abstract onRenderFail(Ljava/lang/String;I)V
.end method

.method public abstract onRenderSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/network/toutiao/TTATNativeExpressHandler$TTNativeExpressAdWrapper;",
            ">;)V"
        }
    .end annotation
.end method
