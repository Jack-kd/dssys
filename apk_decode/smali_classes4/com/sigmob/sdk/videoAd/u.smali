.class public final synthetic Lcom/sigmob/sdk/videoAd/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/videoAd/j;

.field public final synthetic c:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/videoAd/j;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/u;->b:Lcom/sigmob/sdk/videoAd/j;

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/u;->c:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/u;->b:Lcom/sigmob/sdk/videoAd/j;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/u;->c:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/j;->a0(Lcom/sigmob/sdk/videoAd/j;Landroid/graphics/Bitmap;)V

    return-void
.end method
