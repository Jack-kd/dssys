.class public final synthetic Lcom/sigmob/sdk/splash/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/views/gif/e$c;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/splash/c;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/splash/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/splash/n;->a:Lcom/sigmob/sdk/splash/c;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/splash/n;->a:Lcom/sigmob/sdk/splash/c;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/splash/c;->e(Lcom/sigmob/sdk/splash/c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
