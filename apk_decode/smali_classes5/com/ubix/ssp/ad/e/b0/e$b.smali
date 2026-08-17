.class Lcom/ubix/ssp/ad/e/b0/e$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/b0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/ubix/ssp/ad/e/b0/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/b0/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$b;->a:Ljava/lang/ref/SoftReference;

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    const/4 v0, -0x3

    const-string v1, "]"

    if-eq p1, v0, :cond_5

    const/4 v0, -0x2

    const/4 v2, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e$b;->a:Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/b0/e;

    if-eqz p1, :cond_4

    iget v0, p1, Lcom/ubix/ssp/ad/e/b0/e;->f:I

    if-eq v0, v2, :cond_4

    iget-boolean v0, p1, Lcom/ubix/ssp/ad/e/b0/e;->d:Z

    if-eqz v0, :cond_4

    iput v2, p1, Lcom/ubix/ssp/ad/e/b0/e;->f:I

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/b0/e;->k:Lcom/ubix/ssp/ad/e/b0/b;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$b;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/e/b0/e;

    iget-boolean v0, v0, Lcom/ubix/ssp/ad/e/b0/e;->t:Z

    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/e/b0/b;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AUDIO_FOCUS_LOSS ["

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e$b;->a:Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/b0/e;

    if-eqz p1, :cond_4

    iget v0, p1, Lcom/ubix/ssp/ad/e/b0/e;->f:I

    if-ne v0, v2, :cond_3

    iget-boolean v0, p1, Lcom/ubix/ssp/ad/e/b0/e;->r:Z

    if-nez v0, :cond_3

    const/4 v0, 0x5

    iput v0, p1, Lcom/ubix/ssp/ad/e/b0/e;->f:I

    const-string p1, "AUDIO_FOCUS_LOSS_TRANSIENT pause play true"

    :goto_1
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p1, "AUDIO_FOCUS_LOSS_TRANSIENT pause play -false"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AUDIO_FOCUS_LOSS_TRANSIENT_CAN_DUCK ["

    goto :goto_0
.end method
