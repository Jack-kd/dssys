.class Lcom/ubix/ssp/ad/e/b0/c$i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/b0/c;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
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

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/c$i;->c:Lcom/ubix/ssp/ad/e/b0/c;

    iput p2, p0, Lcom/ubix/ssp/ad/e/b0/c$i;->a:I

    iput p3, p0, Lcom/ubix/ssp/ad/e/b0/c$i;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$i;->c:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->a(Lcom/ubix/ssp/ad/e/b0/c;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget v2, p0, Lcom/ubix/ssp/ad/e/b0/c$i;->a:I

    iget v3, p0, Lcom/ubix/ssp/ad/e/b0/c$i;->b:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ubix/ssp/ad/e/b0/c;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    return-void
.end method
