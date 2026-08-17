.class Lcom/ubix/ssp/ad/e/b0/c$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/b0/c;->onInfo(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/ubix/ssp/ad/e/b0/c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/b0/c;II)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/c$d;->c:Lcom/ubix/ssp/ad/e/b0/c;

    iput p2, p0, Lcom/ubix/ssp/ad/e/b0/c$d;->a:I

    iput p3, p0, Lcom/ubix/ssp/ad/e/b0/c$d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$d;->c:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->b(Lcom/ubix/ssp/ad/e/b0/c;)Lcom/ubix/ssp/ad/e/b0/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$d;->c:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->b(Lcom/ubix/ssp/ad/e/b0/c;)Lcom/ubix/ssp/ad/e/b0/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/e;->getMediaPlayerCallback()Lcom/ubix/ssp/ad/e/b0/e$a;

    move-result-object v0

    iget v1, p0, Lcom/ubix/ssp/ad/e/b0/c$d;->a:I

    iget v2, p0, Lcom/ubix/ssp/ad/e/b0/c$d;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/ubix/ssp/ad/e/b0/e$a;->b(II)V

    :cond_0
    return-void
.end method
