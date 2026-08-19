.class public final synthetic Lcom/czhj/sdk/common/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/czhj/sdk/common/utils/ImageManager$BitmapLoadedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/czhj/sdk/common/utils/ImageManager$BitmapLoadedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/czhj/sdk/common/utils/a;->b:Lcom/czhj/sdk/common/utils/ImageManager$BitmapLoadedListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/czhj/sdk/common/utils/a;->b:Lcom/czhj/sdk/common/utils/ImageManager$BitmapLoadedListener;

    invoke-interface {v0}, Lcom/czhj/sdk/common/utils/ImageManager$BitmapLoadedListener;->onBitmapLoadFailed()V

    return-void
.end method
