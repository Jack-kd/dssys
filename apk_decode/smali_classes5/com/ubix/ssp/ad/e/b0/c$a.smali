.class Lcom/ubix/ssp/ad/e/b0/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/b0/c;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ubix/ssp/ad/e/b0/c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/b0/c;I)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/c$a;->b:Lcom/ubix/ssp/ad/e/b0/c;

    iput p2, p0, Lcom/ubix/ssp/ad/e/b0/c$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$a;->b:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->b(Lcom/ubix/ssp/ad/e/b0/c;)Lcom/ubix/ssp/ad/e/b0/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$a;->b:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->b(Lcom/ubix/ssp/ad/e/b0/c;)Lcom/ubix/ssp/ad/e/b0/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/e;->getMediaPlayerCallback()Lcom/ubix/ssp/ad/e/b0/e$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$a;->b:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->b(Lcom/ubix/ssp/ad/e/b0/c;)Lcom/ubix/ssp/ad/e/b0/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/e;->getMediaPlayerCallback()Lcom/ubix/ssp/ad/e/b0/e$a;

    move-result-object v0

    iget v1, p0, Lcom/ubix/ssp/ad/e/b0/c$a;->a:I

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/b0/e$a;->a(I)V

    :cond_0
    return-void
.end method
