.class public Lcom/ubix/ssp/ad/k/a;
.super Lcom/ubix/ssp/ad/b;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ubix/ssp/ad/g/k/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/k/a$h;
    }
.end annotation


# instance fields
.field private A:J

.field private B:Lcom/ubix/ssp/ad/e/a0/g;

.field private C:Ljava/util/concurrent/atomic/AtomicBoolean;

.field D:I

.field E:Z

.field private F:Z

.field private G:Lcom/ubix/ssp/ad/g/k/j;

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:Ljava/lang/String;

.field M:Z

.field N:Z

.field private O:Z

.field P:Z

.field private Q:I

.field private R:F

.field private S:I

.field private T:I

.field private U:I

.field private V:F

.field private W:Z

.field a0:Landroid/os/HandlerThread;

.field private b0:Landroid/os/Handler;

.field c0:Landroid/graphics/Bitmap;

.field d0:Landroid/graphics/Matrix;

.field e0:F

.field f0:F

.field g0:J

.field private final h0:I

.field i0:Z

.field j0:I

.field k0:F

.field private l:Lcom/ubix/ssp/ad/e/b0/g;

.field l0:I

.field private m:Landroid/widget/ImageView;

.field m0:I

.field private n:Landroid/widget/TextView;

.field n0:I

.field private o:Landroid/widget/TextView;

.field private o0:J

.field private p:Landroid/widget/ImageView;

.field private p0:J

.field private q:Landroid/widget/TextView;

.field private q0:I

.field private r:Landroid/widget/ImageView;

.field private r0:J

.field private s:Z

.field private s0:Z

.field private t:Z

.field private t0:Z

.field private u:Z

.field private u0:Z

.field private v:Z

.field private v0:Z

.field private w:Z

.field private w0:I

.field private x:Z

.field private x0:Landroid/os/Bundle;

.field private y:Z

.field private y0:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/b;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/k/a;->s:Z

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/k/a;->t:Z

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/k/a;->u:Z

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/k/a;->v:Z

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/k/a;->w:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->x:Z

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/k/a;->y:Z

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/k/a;->z:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/ubix/ssp/ad/k/a;->A:J

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/ubix/ssp/ad/k/a;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->D:I

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->E:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->F:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/ubix/ssp/ad/k/a;->H:I

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->M:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->N:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->O:Z

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/k/a;->P:Z

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->Q:I

    const p1, 0x3d4ccccd    # 0.05f

    iput p1, p0, Lcom/ubix/ssp/ad/k/a;->R:F

    const/4 p1, 0x5

    iput p1, p0, Lcom/ubix/ssp/ad/k/a;->S:I

    iput p1, p0, Lcom/ubix/ssp/ad/k/a;->T:I

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->U:I

    const/high16 p1, 0x3f100000    # 0.5625f

    iput p1, p0, Lcom/ubix/ssp/ad/k/a;->V:F

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->W:Z

    new-instance p1, Landroid/os/HandlerThread;

    const-string v3, "ConfirmViewDraw"

    invoke-direct {p1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/k/a;->a0:Landroid/os/HandlerThread;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/ubix/ssp/ad/k/a;->d0:Landroid/graphics/Matrix;

    const/high16 p1, 0x3fc00000    # 1.5f

    iput p1, p0, Lcom/ubix/ssp/ad/k/a;->e0:F

    const/high16 p1, 0x42480000    # 50.0f

    iput p1, p0, Lcom/ubix/ssp/ad/k/a;->f0:F

    const/16 p1, 0x10

    iput p1, p0, Lcom/ubix/ssp/ad/k/a;->h0:I

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->i0:Z

    const/4 p1, 0x3

    iput p1, p0, Lcom/ubix/ssp/ad/k/a;->j0:I

    const v3, 0x3e4ccccd    # 0.2f

    iput v3, p0, Lcom/ubix/ssp/ad/k/a;->k0:F

    iput p1, p0, Lcom/ubix/ssp/ad/k/a;->n0:I

    iput-wide v1, p0, Lcom/ubix/ssp/ad/k/a;->o0:J

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->q0:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/ubix/ssp/ad/k/a;->r0:J

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->s0:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->t0:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->u0:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->v0:Z

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->w0:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ubix/ssp/ad/k/a;->x0:Landroid/os/Bundle;

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->y0:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5

    .line 2
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/b;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->s:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->t:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->u:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->v:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->w:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/k/a;->x:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->y:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->z:Z

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/ubix/ssp/ad/k/a;->A:J

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/ubix/ssp/ad/k/a;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v1, p0, Lcom/ubix/ssp/ad/k/a;->D:I

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/k/a;->E:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/k/a;->F:Z

    const/4 v4, -0x1

    iput v4, p0, Lcom/ubix/ssp/ad/k/a;->H:I

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/k/a;->M:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/k/a;->N:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/k/a;->O:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->P:Z

    iput v1, p0, Lcom/ubix/ssp/ad/k/a;->Q:I

    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->R:F

    const/4 v0, 0x5

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->S:I

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->T:I

    iput v1, p0, Lcom/ubix/ssp/ad/k/a;->U:I

    const/high16 v0, 0x3f100000    # 0.5625f

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->V:F

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/k/a;->W:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v4, "ConfirmViewDraw"

    invoke-direct {v0, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/k/a;->a0:Landroid/os/HandlerThread;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/k/a;->d0:Landroid/graphics/Matrix;

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->e0:F

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->f0:F

    const/16 v0, 0x10

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->h0:I

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/k/a;->i0:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->j0:I

    const v4, 0x3e4ccccd    # 0.2f

    iput v4, p0, Lcom/ubix/ssp/ad/k/a;->k0:F

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->n0:I

    iput-wide v2, p0, Lcom/ubix/ssp/ad/k/a;->o0:J

    iput v1, p0, Lcom/ubix/ssp/ad/k/a;->q0:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/ubix/ssp/ad/k/a;->r0:J

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/k/a;->s0:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/k/a;->t0:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/k/a;->u0:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/k/a;->v0:Z

    iput v1, p0, Lcom/ubix/ssp/ad/k/a;->w0:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/k/a;->x0:Landroid/os/Bundle;

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/k/a;->y0:Z

    invoke-virtual {p0, p1, p2}, Lcom/ubix/ssp/ad/k/a;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic A(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic B(Lcom/ubix/ssp/ad/k/a;)I
    .locals 0

    iget p0, p0, Lcom/ubix/ssp/ad/b;->b:I

    return p0
.end method

.method public static synthetic C(Lcom/ubix/ssp/ad/k/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ubix/ssp/ad/k/a;->W:Z

    return p0
.end method

.method public static synthetic D(Lcom/ubix/ssp/ad/k/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/k/a;->b0:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic E(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic F(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic G(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic H(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic I(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/k/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ubix/ssp/ad/k/a;->q0:I

    return p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/k/a;)Lcom/ubix/ssp/ad/g/k/j;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    return-object p0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/k/a;ZIIJJ)V
    .locals 0

    .line 11
    invoke-direct/range {p0 .. p7}, Lcom/ubix/ssp/ad/k/a;->a(ZIIJJ)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a;->r:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    const/16 p1, 0x5a

    iput p1, p0, Lcom/ubix/ssp/ad/k/a;->D:I

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a;->o:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_3
    new-instance p1, Lcom/ubix/ssp/ad/e/a0/g;

    const-wide/16 v0, 0x190

    invoke-direct {p1, v0, v1}, Lcom/ubix/ssp/ad/e/a0/g;-><init>(J)V

    new-instance v0, Lcom/ubix/ssp/ad/k/a$e;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/k/a$e;-><init>(Lcom/ubix/ssp/ad/k/a;)V

    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/e/a0/g;->a(Lcom/ubix/ssp/ad/e/a0/g$b;)V

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/g;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method private a(ZIIJJ)V
    .locals 19

    .line 16
    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    const-string v8, ""

    const-string v9, "\u70b9\u51fb\u5e7f\u544a\u5e76\u505c\u7559%s\u79d2\u83b7\u53d6\u5956\u52b1"

    iget-boolean v10, v1, Lcom/ubix/ssp/ad/k/a;->t:Z

    if-eqz v10, :cond_23

    iget-wide v10, v1, Lcom/ubix/ssp/ad/k/a;->p0:J

    iget-boolean v12, v1, Lcom/ubix/ssp/ad/k/a;->P:Z

    if-eqz v12, :cond_0

    iget v12, v1, Lcom/ubix/ssp/ad/k/a;->J:I

    goto :goto_0

    :cond_0
    const/16 v12, 0x64

    :goto_0
    int-to-long v12, v12

    mul-long/2addr v12, v6

    const-wide/16 v14, 0x64

    div-long/2addr v12, v14

    long-to-int v12, v12

    int-to-long v12, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/ubix/ssp/ad/k/a;->o0:J

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-nez v3, :cond_1

    goto/16 :goto_e

    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateCountdown="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v16, v14

    iget-wide v14, v1, Lcom/ubix/ssp/ad/k/a;->o0:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ";isRewarded="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ";progress="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ";position="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ";duration="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget v6, v1, Lcom/ubix/ssp/ad/k/a;->K:I

    const-string v12, "\u5956\u52b1\u83b7\u53d6\u4e2d"

    const-string v13, "\u79d2\u540e"

    const-wide/16 p6, 0x3e8

    const-string v14, "\u606d\u559c\u83b7\u5f97\u5956\u52b1"

    const-string v15, "\u5956\u52b1\u83b7\u53d6\u5931\u8d25"

    const/4 v7, 0x3

    if-nez v6, :cond_6

    if-eqz v0, :cond_2

    if-eqz v2, :cond_15

    if-ne v2, v7, :cond_2

    goto/16 :goto_a

    :cond_2
    if-nez v0, :cond_3

    if-ne v2, v7, :cond_3

    goto/16 :goto_b

    :cond_3
    iget-object v0, v1, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, v1, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-wide v6, v1, Lcom/ubix/ssp/ad/k/a;->o0:J

    sub-long/2addr v6, v4

    cmp-long v0, v6, v16

    if-gez v0, :cond_4

    move/from16 v18, v11

    goto/16 :goto_5

    :cond_4
    iget-object v0, v1, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long v6, v6, p6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/ubix/ssp/ad/k/a;->L:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "\u83b7\u53d6\u5956\u52b1"

    goto :goto_1

    :cond_5
    iget-object v6, v1, Lcom/ubix/ssp/ad/k/a;->L:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    :cond_6
    if-eq v6, v11, :cond_14

    if-ne v6, v10, :cond_7

    goto/16 :goto_9

    :cond_7
    move/from16 v18, v11

    const/4 v11, 0x6

    const/4 v10, 0x4

    if-eq v6, v7, :cond_c

    if-eq v6, v10, :cond_c

    if-ne v6, v11, :cond_8

    goto :goto_4

    :cond_8
    const/4 v10, 0x5

    if-ne v6, v10, :cond_19

    if-eqz v0, :cond_9

    if-eqz v2, :cond_15

    if-ne v2, v7, :cond_9

    goto/16 :goto_a

    :cond_9
    if-nez v0, :cond_a

    if-ne v2, v7, :cond_a

    goto/16 :goto_b

    :cond_a
    :try_start_0
    iget-object v0, v1, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/ubix/ssp/ad/k/a;->L:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object v2, v9

    goto :goto_3

    :cond_b
    iget-object v2, v1, Lcom/ubix/ssp/ad/k/a;->L:Ljava/lang/String;

    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v1, Lcom/ubix/ssp/ad/k/a;->q0:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_c

    :catchall_0
    iget-object v0, v1, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lcom/ubix/ssp/ad/k/a;->q0:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v9, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_c
    :goto_4
    if-eqz v0, :cond_d

    if-eqz v2, :cond_15

    if-ne v2, v7, :cond_d

    goto/16 :goto_a

    :cond_d
    iget-wide v8, v1, Lcom/ubix/ssp/ad/k/a;->o0:J

    cmp-long v6, v4, v8

    if-gez v6, :cond_12

    iget-object v6, v1, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    iget-object v6, v1, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    iget-wide v8, v1, Lcom/ubix/ssp/ad/k/a;->o0:J

    sub-long/2addr v8, v4

    cmp-long v6, v8, v16

    if-gez v6, :cond_e

    :goto_5
    iget-object v0, v1, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    :cond_e
    if-nez v0, :cond_f

    if-ne v2, v7, :cond_f

    iget-object v0, v1, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_f
    iget-object v0, v1, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget v0, v1, Lcom/ubix/ssp/ad/k/a;->K:I

    if-eq v0, v7, :cond_10

    if-eq v0, v10, :cond_10

    if-eq v0, v11, :cond_10

    iget-object v0, v1, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/ubix/ssp/ad/k/a;->L:Ljava/lang/String;

    iget-wide v6, v1, Lcom/ubix/ssp/ad/k/a;->o0:J

    sub-long/2addr v6, v4

    long-to-int v6, v6

    div-int/lit16 v6, v6, 0x3e8

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_10
    iget-object v0, v1, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long v8, v8, p6

    long-to-int v6, v8

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/ubix/ssp/ad/k/a;->L:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_11
    :goto_7
    iget-object v0, v1, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    :cond_12
    iget-object v0, v1, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    instance-of v2, v0, Lcom/ubix/ssp/ad/g/k/h;

    if-eqz v2, :cond_13

    check-cast v0, Lcom/ubix/ssp/ad/g/k/h;

    invoke-interface {v0}, Lcom/ubix/ssp/ad/g/k/h;->f()V

    :cond_13
    iget v0, v1, Lcom/ubix/ssp/ad/k/a;->K:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_19

    move/from16 v2, v18

    if-eq v0, v2, :cond_19

    :goto_8
    invoke-direct {v1}, Lcom/ubix/ssp/ad/k/a;->x()V

    goto :goto_c

    :cond_14
    :goto_9
    if-eqz v0, :cond_16

    if-eqz v2, :cond_15

    if-ne v2, v7, :cond_16

    :cond_15
    :goto_a
    iget-object v0, v1, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_16
    if-nez v0, :cond_17

    if-ne v2, v7, :cond_17

    :goto_b
    iget-object v0, v1, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_17
    iget-object v0, v1, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/ubix/ssp/ad/k/a;->L:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "\u70b9\u51fb\u5e76\u8df3\u8f6c\u83b7\u53d6\u5956\u52b1"

    goto/16 :goto_2

    :cond_18
    iget-object v2, v1, Lcom/ubix/ssp/ad/k/a;->L:Ljava/lang/String;

    goto/16 :goto_2

    :cond_19
    :goto_c
    iget-wide v6, v1, Lcom/ubix/ssp/ad/k/a;->r0:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_1a

    iget-boolean v0, v1, Lcom/ubix/ssp/ad/k/a;->s0:Z

    if-nez v0, :cond_1a

    cmp-long v0, v4, v6

    if-lez v0, :cond_1a

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/ubix/ssp/ad/k/a;->s0:Z

    iget-object v0, v1, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    instance-of v2, v0, Lcom/ubix/ssp/ad/g/k/h;

    if-eqz v2, :cond_1a

    check-cast v0, Lcom/ubix/ssp/ad/g/k/h;

    invoke-interface {v0}, Lcom/ubix/ssp/ad/g/k/h;->b()V

    :cond_1a
    iget-boolean v0, v1, Lcom/ubix/ssp/ad/k/a;->M:Z

    if-nez v0, :cond_1b

    iget-object v0, v1, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz v0, :cond_1b

    instance-of v2, v0, Lcom/ubix/ssp/ad/g/k/h;

    if-eqz v2, :cond_1b

    check-cast v0, Lcom/ubix/ssp/ad/g/k/h;

    invoke-interface {v0}, Lcom/ubix/ssp/ad/g/k/h;->e()V

    :cond_1b
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/ubix/ssp/ad/k/a;->M:Z

    iget-object v0, v1, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz v0, :cond_1c

    instance-of v2, v0, Lcom/ubix/ssp/ad/g/k/h;

    if-eqz v2, :cond_1c

    check-cast v0, Lcom/ubix/ssp/ad/g/k/h;

    invoke-interface {v0}, Lcom/ubix/ssp/ad/g/k/h;->g()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/k/a;->y()V

    :cond_1c
    iget v0, v1, Lcom/ubix/ssp/ad/k/a;->w0:I

    const-wide/16 v6, 0x1f4

    const/16 v2, 0x8

    const/4 v10, 0x1

    if-ne v0, v10, :cond_1d

    const-wide/16 v11, 0x7d0

    cmp-long v0, v4, v11

    if-lez v0, :cond_1d

    iget-boolean v0, v1, Lcom/ubix/ssp/ad/k/a;->v0:Z

    if-nez v0, :cond_1d

    :try_start_1
    iput-boolean v10, v1, Lcom/ubix/ssp/ad/k/a;->v0:Z

    new-instance v0, Lcom/ubix/ssp/ad/e/i;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/ubix/ssp/ad/e/i;-><init>(Landroid/content/Context;)V

    iget-object v10, v1, Lcom/ubix/ssp/ad/k/a;->x0:Landroid/os/Bundle;

    invoke-virtual {v0, v10}, Lcom/ubix/ssp/ad/e/i;->a(Landroid/os/Bundle;)V

    const v10, 0x7a1e9

    invoke-virtual {v0, v10}, Landroid/view/View;->setId(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v10, Lcom/ubix/ssp/ad/k/a$c;

    invoke-direct {v10, v1, v0}, Lcom/ubix/ssp/ad/k/a$c;-><init>(Lcom/ubix/ssp/ad/k/a;Lcom/ubix/ssp/ad/e/i;)V

    invoke-virtual {v0, v10}, Lcom/ubix/ssp/ad/e/i;->setClickListener(Lcom/ubix/ssp/ad/e/i$a;)V

    invoke-virtual {v0, v0, v6, v7}, Lcom/ubix/ssp/ad/e/i;->a(Landroid/view/View;J)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_d

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1d
    :goto_d
    iget v0, v1, Lcom/ubix/ssp/ad/k/a;->w0:I

    const/4 v10, 0x2

    if-ne v0, v10, :cond_1f

    :try_start_2
    iget-wide v10, v1, Lcom/ubix/ssp/ad/k/a;->o0:J

    sub-long v12, v10, v4

    const-wide/16 v14, 0x1388

    cmp-long v0, v12, v14

    if-gez v0, :cond_1f

    cmp-long v0, v10, v8

    if-lez v0, :cond_1f

    iget-boolean v0, v1, Lcom/ubix/ssp/ad/k/a;->y0:Z

    if-nez v0, :cond_1f

    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/ubix/ssp/ad/k/a;->y0:Z

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/b;->l()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_10

    :cond_1e
    new-instance v0, Lcom/ubix/ssp/ad/e/l;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/ubix/ssp/ad/e/l;-><init>(Landroid/content/Context;)V

    const v8, 0x7a1ea

    invoke-virtual {v0, v8}, Landroid/view/View;->setId(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v0, v6, v7}, Lcom/ubix/ssp/ad/e/l;->a(Landroid/view/View;J)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, v1, Lcom/ubix/ssp/ad/k/a;->x0:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Lcom/ubix/ssp/ad/e/l;->a(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lcom/ubix/ssp/ad/k/a$d;

    invoke-direct {v2, v1, v0}, Lcom/ubix/ssp/ad/k/a$d;-><init>(Lcom/ubix/ssp/ad/k/a;Lcom/ubix/ssp/ad/e/l;)V

    invoke-virtual {v0, v2}, Lcom/ubix/ssp/ad/e/l;->setClickListener(Lcom/ubix/ssp/ad/e/l$c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_e

    :catchall_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1f
    :goto_e
    iget-wide v6, v1, Lcom/ubix/ssp/ad/k/a;->o0:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_23

    if-eqz v3, :cond_23

    iget-boolean v0, v1, Lcom/ubix/ssp/ad/k/a;->N:Z

    if-nez v0, :cond_21

    iget-object v0, v1, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz v0, :cond_21

    instance-of v2, v0, Lcom/ubix/ssp/ad/g/k/h;

    if-eqz v2, :cond_20

    check-cast v0, Lcom/ubix/ssp/ad/g/k/h;

    invoke-interface {v0}, Lcom/ubix/ssp/ad/g/k/h;->f()V

    :cond_20
    iget v0, v1, Lcom/ubix/ssp/ad/k/a;->K:I

    const/4 v10, 0x2

    if-eq v0, v10, :cond_21

    const/4 v2, 0x1

    if-eq v0, v2, :cond_22

    invoke-direct {v1}, Lcom/ubix/ssp/ad/k/a;->x()V

    goto :goto_f

    :cond_21
    const/4 v2, 0x1

    :cond_22
    :goto_f
    iput-boolean v2, v1, Lcom/ubix/ssp/ad/k/a;->N:Z

    :cond_23
    :goto_10
    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/k/a;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/k/a;->O:Z

    return p1
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method private b(Z)V
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->F:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->F:Z

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/k/a;->a(Z)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a;->r:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/k/a;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/k/a;->W:Z

    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    .line 9
    :try_start_0
    iget v0, p0, Lcom/ubix/ssp/ad/k/a;->Q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/c;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->V:F

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    if-ne v0, p1, :cond_2

    const p1, 0xdbc06

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/t/a/e;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return v1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method private d(II)Landroid/graphics/Rect;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    mul-int v1, p1, p2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/ubix/ssp/ad/k/a;->T:I

    mul-int/2addr v1, p2

    int-to-float v1, v1

    const v2, 0x3c23d70a    # 0.01f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v3, p0, Lcom/ubix/ssp/ad/k/a;->S:I

    mul-int/2addr v3, p1

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    iput p1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v1

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-object v0
.end method

.method public static synthetic d(Lcom/ubix/ssp/ad/k/a;)Landroid/widget/ImageView;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ubix/ssp/ad/k/a;->r:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic e(Lcom/ubix/ssp/ad/k/a;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/k/a;->o:Landroid/widget/TextView;

    return-object p0
.end method

.method private e(II)Z
    .locals 1

    .line 3
    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget p2, p0, Lcom/ubix/ssp/ad/k/a;->V:F

    div-float/2addr p2, p1

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/ubix/ssp/ad/k/a;->R:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic f(Lcom/ubix/ssp/ad/k/a;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic g(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic h(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic i(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic j(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic k(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic l(Lcom/ubix/ssp/ad/k/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ubix/ssp/ad/k/a;->O:Z

    return p0
.end method

.method public static synthetic m(Lcom/ubix/ssp/ad/k/a;)Lcom/ubix/ssp/ad/e/a0/s;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    return-object p0
.end method

.method public static synthetic n(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic o(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic p(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic q(Lcom/ubix/ssp/ad/k/a;)I
    .locals 0

    iget p0, p0, Lcom/ubix/ssp/ad/b;->b:I

    return p0
.end method

.method public static synthetic r(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic s(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method private s()V
    .locals 9

    .line 2
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->w:Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    const-string v4, "AD_WIDTH"

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "AD_HEIGHT"

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "TEMPLATE_ID"

    const v4, 0x182b9

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Lcom/ubix/ssp/ad/b;->a(Landroid/content/Context;Landroid/os/Bundle;IZ)Lcom/ubix/ssp/ad/b;

    move-result-object v0

    const v3, 0x7a184

    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/ubix/ssp/ad/k/a$f;

    invoke-direct {v3, p0}, Lcom/ubix/ssp/ad/k/a$f;-><init>(Lcom/ubix/ssp/ad/k/a;)V

    invoke-virtual {v0, v3}, Lcom/ubix/ssp/ad/b;->setInnerListener(Lcom/ubix/ssp/ad/g/k/b;)V

    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result v0

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    const v3, 0x7a125

    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-static {v4}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v5

    invoke-static {v4}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v4

    invoke-virtual {v0, v5, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->z:Z

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x41800000    # 16.0f

    if-eqz v0, :cond_1

    const-string v0, "ubix/ic_reward_gift.webp"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v4}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v6

    neg-int v6, v6

    invoke-static {v5}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v7

    invoke-static {v4}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v5}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v8

    invoke-virtual {v0, v6, v2, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, p0, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v6, 0x41e00000    # 28.0f

    invoke-static {v6}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v6

    const/4 v7, -0x2

    invoke-direct {v0, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    invoke-virtual {p0, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->y:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->s:Z

    if-eqz v0, :cond_3

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/k/a;->m:Landroid/widget/ImageView;

    const v6, 0x7a122

    invoke-virtual {v0, v6}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->m:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->x:Z

    if-eqz v0, :cond_4

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0xe

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {v5}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v6

    invoke-static {v5}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v5

    invoke-static {v4}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v4

    invoke-virtual {v0, v6, v2, v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/f;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->u:Z

    if-eqz v0, :cond_5

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/k/a;->p:Landroid/widget/ImageView;

    const v2, 0x7a123

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->p:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/ubix/ssp/ad/k/a;->u0:Z

    const-string v4, "ubix/ic_logo.png"

    invoke-static {v4, v2}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->p:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->v:Z

    if-eqz v0, :cond_6

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/k/a;->q:Landroid/widget/TextView;

    const v2, 0x7a126

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->q:Landroid/widget/TextView;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->q:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/k/a;->r:Landroid/widget/ImageView;

    const v2, 0x7a124

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->r:Landroid/widget/ImageView;

    const-string v2, "ubix/ic_close_shade.webp"

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->r:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->r:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->t0:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/b;->h()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    return-void
.end method

.method private setTimer(J)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/k/a;->O:Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz p1, :cond_0

    instance-of p2, p1, Lcom/ubix/ssp/ad/g/k/h;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/ubix/ssp/ad/g/k/h;

    invoke-interface {p1}, Lcom/ubix/ssp/ad/g/k/h;->a()Z

    move-result p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    check-cast p2, Lcom/ubix/ssp/ad/g/k/h;

    invoke-interface {p2}, Lcom/ubix/ssp/ad/g/k/h;->d()I

    move-result p2

    move v1, p1

    move v2, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    move v1, p1

    move v2, v1

    :goto_0
    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/ubix/ssp/ad/k/a;->a(ZIIJJ)V

    new-instance p1, Lcom/ubix/ssp/ad/k/a$a;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/k/a$a;-><init>(Lcom/ubix/ssp/ad/k/a;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    move-object v0, p0

    iget-object v1, v0, Lcom/ubix/ssp/ad/k/a;->B:Lcom/ubix/ssp/ad/e/a0/g;

    if-eqz v1, :cond_2

    return-void

    :cond_2
    new-instance v1, Lcom/ubix/ssp/ad/e/a0/g;

    invoke-direct {v1, p1, p2}, Lcom/ubix/ssp/ad/e/a0/g;-><init>(J)V

    iput-object v1, v0, Lcom/ubix/ssp/ad/k/a;->B:Lcom/ubix/ssp/ad/e/a0/g;

    new-instance v2, Lcom/ubix/ssp/ad/k/a$b;

    invoke-direct {v2, p0, p1, p2}, Lcom/ubix/ssp/ad/k/a$b;-><init>(Lcom/ubix/ssp/ad/k/a;J)V

    invoke-virtual {v1, v2}, Lcom/ubix/ssp/ad/e/a0/g;->a(Lcom/ubix/ssp/ad/e/a0/g$b;)V

    iget-object p1, v0, Lcom/ubix/ssp/ad/k/a;->B:Lcom/ubix/ssp/ad/e/a0/g;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/g;->e()V

    return-void
.end method

.method public static synthetic t(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic u(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic v(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic w(Lcom/ubix/ssp/ad/k/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ubix/ssp/ad/k/a;->x()V

    return-void
.end method

.method public static synthetic x(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method private x()V
    .locals 2

    .line 2
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->W:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->j0:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->a0:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v1, p0, Lcom/ubix/ssp/ad/k/a;->a0:Landroid/os/HandlerThread;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/ubix/ssp/ad/k/a;->b0:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic y(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic z(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 3
    return-void
.end method

.method public a(II)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/ubix/ssp/ad/g/k/j;->a(II)V

    :cond_0
    return-void
.end method

.method public a(IIIDI[IILjava/lang/String;Ljava/lang/String;IDZZ)V
    .locals 17

    .line 5
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    iput v2, v1, Lcom/ubix/ssp/ad/k/a;->I:I

    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, v1, Lcom/ubix/ssp/ad/k/a;->H:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget v0, v1, Lcom/ubix/ssp/ad/k/a;->H:I

    const/4 v3, 0x3

    const/4 v9, 0x1

    if-eq v0, v9, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move v6, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v9

    :goto_2
    const/4 v0, 0x2

    if-eq v2, v0, :cond_8

    if-eq v2, v3, :cond_6

    const/16 v0, 0x20

    if-eq v2, v0, :cond_5

    const/16 v0, 0x21

    if-eq v2, v0, :cond_3

    goto/16 :goto_6

    :cond_3
    const/4 v3, 0x0

    move-wide/from16 v4, p4

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/ubix/ssp/ad/b;->a(IZDI)V

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u6ed1\u52a8\u6216\u70b9\u51fb\u56fe\u6807"

    goto :goto_3

    :cond_4
    move-object v0, v7

    :goto_3
    invoke-virtual {v1, v2, v0, v8, v9}, Lcom/ubix/ssp/ad/b;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    const v0, 0xde509

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    move-wide/from16 v4, p4

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/ubix/ssp/ad/b;->a(IZDI)V

    invoke-virtual {v1, v2, v7, v8, v9}, Lcom/ubix/ssp/ad/b;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_6

    :cond_6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "\u6447\u52a8\u6216\u70b9\u51fb\u56fe\u6807"

    goto :goto_4

    :cond_7
    move-object v0, v7

    :goto_4
    invoke-virtual {v1, v2, v0, v8, v9}, Lcom/ubix/ssp/ad/b;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v4, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p11

    move-wide/from16 v13, p12

    move/from16 v15, p14

    move/from16 v16, p15

    invoke-virtual/range {v1 .. v16}, Lcom/ubix/ssp/ad/b;->a(ZIIIZZD[IIIDZZ)V

    const v0, 0xde314

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    :cond_8
    invoke-virtual {v1, v2, v7, v8, v9}, Lcom/ubix/ssp/ad/b;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v4, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p11

    move-wide/from16 v13, p12

    move/from16 v15, p14

    move/from16 v16, p15

    invoke-virtual/range {v1 .. v16}, Lcom/ubix/ssp/ad/b;->a(ZIIIZZD[IIIDZZ)V

    :cond_9
    :goto_6
    return-void
.end method

.method public a(IJJ)V
    .locals 9

    .line 6
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/ubix/ssp/ad/g/k/h;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/ubix/ssp/ad/g/k/h;

    invoke-interface {v0}, Lcom/ubix/ssp/ad/g/k/h;->a()Z

    move-result v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    check-cast v1, Lcom/ubix/ssp/ad/g/k/h;

    invoke-interface {v1}, Lcom/ubix/ssp/ad/g/k/h;->c()I

    move-result v1

    iput v1, p0, Lcom/ubix/ssp/ad/k/a;->q0:I

    iget-object v1, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    check-cast v1, Lcom/ubix/ssp/ad/g/k/h;

    invoke-interface {v1}, Lcom/ubix/ssp/ad/g/k/h;->d()I

    move-result v1

    move v2, v0

    move v3, v1

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    move-object v1, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    :goto_0
    invoke-direct/range {v1 .. v8}, Lcom/ubix/ssp/ad/k/a;->a(ZIIJJ)V

    move v3, v4

    move-wide v4, v5

    move-wide v6, v7

    iget-object v2, v1, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz v2, :cond_1

    invoke-interface/range {v2 .. v7}, Lcom/ubix/ssp/ad/g/k/j;->a(IJJ)V

    :cond_1
    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 0

    .line 7
    return-void
.end method

.method public a(ILandroid/view/View;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/ubix/ssp/ad/g/k/b;->a(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 9

    .line 9
    const-string v0, "IS_DOWNLOAD"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->x:Z

    const-string v0, "SUPPORT_FEED_BACK"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->t0:Z

    const-string v0, "COUNTDOWN_STATUS"

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    iput-boolean v4, p0, Lcom/ubix/ssp/ad/k/a;->z:Z

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->y:Z

    const-string v0, "REWARD_TYPE"

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->K:I

    const-string v0, "REWARD_GUIDE_START_TIME"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/ubix/ssp/ad/k/a;->r0:J

    const-string v0, "REWARD_TASK_TIME"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v0, v5

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->q0:I

    const-string v0, "REWARD_PLAY_PERCENT"

    const/16 v2, 0x5a

    invoke-virtual {p2, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->J:I

    const-string v0, "REWARD_DURATION"

    const-wide/16 v5, -0x1

    invoke-virtual {p2, v0, v5, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/ubix/ssp/ad/k/a;->p0:J

    const-string v0, "REWARD_DESCRIPTION"

    const-string v2, ""

    invoke-virtual {p2, v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/k/a;->L:Ljava/lang/String;

    const-string v0, "VIDEO_RENDER_TYPE"

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "IS_UNNAMED"

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ubix/ssp/ad/k/a;->u0:Z

    new-instance v2, Lcom/ubix/ssp/ad/e/b0/g;

    if-nez v0, :cond_5

    sget-object v0, Lcom/ubix/ssp/ad/d/b;->a:Lcom/ubix/ssp/open/UBiXAdSetting;

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdSetting;->isUseTextureView()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v4, v3

    goto :goto_4

    :cond_5
    move v4, v0

    :goto_4
    invoke-direct {v2, p1, v4}, Lcom/ubix/ssp/ad/e/b0/g;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/ubix/ssp/ad/k/a;->l:Lcom/ubix/ssp/ad/e/b0/g;

    const-string p1, "AD_TYPE"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v3, :cond_6

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a;->l:Lcom/ubix/ssp/ad/e/b0/g;

    invoke-virtual {p1, v1}, Lcom/ubix/ssp/ad/e/b0/g;->a(Z)V

    :cond_6
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a;->l:Lcom/ubix/ssp/ad/e/b0/g;

    const p2, 0x7a121

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    new-instance p1, Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ubix/ssp/ad/e/t/a/e;-><init>(Landroid/content/Context;)V

    const p2, 0xdbc06

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/k/a;->l:Lcom/ubix/ssp/ad/e/b0/g;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/k/a;->s()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 8

    .line 10
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "reward"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    instance-of v0, p1, Lcom/ubix/ssp/ad/g/k/h;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ubix/ssp/ad/g/k/h;

    invoke-interface {p1}, Lcom/ubix/ssp/ad/g/k/h;->a()Z

    move-result v1

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    check-cast p1, Lcom/ubix/ssp/ad/g/k/h;

    invoke-interface {p1}, Lcom/ubix/ssp/ad/g/k/h;->c()I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/k/a;->q0:I

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    check-cast p1, Lcom/ubix/ssp/ad/g/k/h;

    invoke-interface {p1}, Lcom/ubix/ssp/ad/g/k/h;->d()I

    move-result v2

    iget-wide v4, p0, Lcom/ubix/ssp/ad/k/a;->A:J

    const/16 v3, 0x64

    move-wide v6, v4

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/ubix/ssp/ad/k/a;->a(ZIIJJ)V

    move-object v1, v0

    return-void

    :cond_0
    move-object v1, p0

    goto :goto_0

    :cond_1
    move-object v1, p0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "cancel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7a1ea

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lcom/ubix/ssp/ad/e/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/l;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 12
    if-eqz p1, :cond_0

    const v0, 0xdbc06

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-interface {v1, p1, v0, v2, v3}, Lcom/ubix/ssp/ad/e/v/a;->a(Ljava/lang/String;Landroid/widget/ImageView;ILcom/ubix/ssp/ad/e/v/e$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 13
    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/s;->f()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/k/a;->r()Landroid/view/ViewGroup;

    move-result-object p1

    const p2, 0xde318

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/k/a;->r()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/k/a;->r()Landroid/view/ViewGroup;

    move-result-object p1

    const v0, 0xde3dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/k/a;->r()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    .line 14
    invoke-super/range {p0 .. p8}, Lcom/ubix/ssp/ad/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    const v0, 0xe0a25

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p7, v1

    const-string v2, ""

    if-lez v1, :cond_1

    long-to-double p7, p7

    invoke-static {p7, p8}, Lcom/ubix/ssp/ad/e/a0/k;->a(D)Ljava/lang/String;

    move-result-object p7

    const/4 p8, 0x1

    goto :goto_0

    :cond_1
    const/4 p8, 0x0

    move-object p7, v2

    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p5, v2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e28\u5907\u6848\u53f7:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    :goto_1
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p6, v2

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e28\u9002\u7528\u5e74\u9f84:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    :goto_2
    if-eqz p8, :cond_4

    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct {p8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e28\u5e94\u7528\u5927\u5c0f:"

    invoke-virtual {p8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    move-object p7, v2

    filled-new-array/range {p2 .. p7}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "\u5e94\u7528\u540d\u79f0:%s\u4e28\u5e94\u7528\u7248\u672c:%s\u4e28\u5f00\u53d1\u8005:%s%s%s%s\u4e28\u6743\u9650\u4e28\u9690\u79c1\u4e28\u529f\u80fd\u4ecb\u7ecd"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/ubix/ssp/ad/e/f;

    invoke-direct {p3, p2}, Lcom/ubix/ssp/ad/e/f;-><init>(Ljava/lang/String;)V

    iget-object p2, p1, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    invoke-virtual {p3, p2}, Lcom/ubix/ssp/ad/e/f;->a(Lcom/ubix/ssp/ad/g/k/b;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/g/k/b;->b(I)V

    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/ubix/ssp/ad/g/k/j;->b(II)V

    :cond_0
    return-void
.end method

.method public b(ILandroid/view/View;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    const-string p2, "__CLICK_TRIGGER__"

    const-string v0, ""

    invoke-virtual {p3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    invoke-interface {p2, p1, p0, p3}, Lcom/ubix/ssp/ad/g/k/b;->b(ILandroid/view/View;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/k;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->c()Lcom/ubix/ssp/ad/e/v/f;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/ubix/ssp/ad/e/v/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->l:Lcom/ubix/ssp/ad/e/b0/g;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/ubix/ssp/ad/e/b0/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a;->l:Lcom/ubix/ssp/ad/e/b0/g;

    invoke-virtual {p1, p0}, Lcom/ubix/ssp/ad/e/b0/e;->setVideoViewListener(Lcom/ubix/ssp/ad/g/k/j;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a;->l:Lcom/ubix/ssp/ad/e/b0/g;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/e/b0/e;->setVideoImageDisplayType(I)V

    if-eqz p2, :cond_2

    const p1, 0xdbc06

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/16 v2, 0xa

    invoke-interface {v0, p2, p1, v2, v1}, Lcom/ubix/ssp/ad/e/v/a;->a(Ljava/lang/String;Landroid/widget/ImageView;ILcom/ubix/ssp/ad/e/v/e$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public b(Landroid/os/Bundle;)Z
    .locals 6

    .line 7
    iput-object p1, p0, Lcom/ubix/ssp/ad/k/a;->x0:Landroid/os/Bundle;

    const-string v0, "AUTO_MUTE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/k/a;->setMute(Z)V

    const-string v0, "IS_VIDEO"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->P:Z

    const-string v0, "RENDER_MODE"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->Q:I

    const-string v0, "VIDEO_ECTR"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->w0:I

    const-string v0, "SCALE_IGNORE_PERCENT"

    const v3, 0x3d4ccccd    # 0.05f

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->R:F

    const-string v0, "SCALE_HORIZONTAL_MARGIN"

    const/4 v3, 0x5

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->S:I

    const/16 v4, 0x32

    if-lt v0, v4, :cond_0

    iput v3, p0, Lcom/ubix/ssp/ad/k/a;->S:I

    :cond_0
    const-string v0, "SCALE_VERTICAL_MARGIN"

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->T:I

    if-lt v0, v4, :cond_1

    iput v3, p0, Lcom/ubix/ssp/ad/k/a;->T:I

    :cond_1
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->P:Z

    const-string v3, "IMAGE_URL"

    if-eqz v0, :cond_2

    const-string v0, "VIDEO_URL"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, v2

    invoke-virtual {p0, v0, v2}, Lcom/ubix/ssp/ad/k/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->l:Lcom/ubix/ssp/ad/e/b0/g;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/ubix/ssp/ad/k/a;->b(Ljava/lang/String;)Z

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/k/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    const/16 v4, 0x48

    invoke-static {v2, v3, v4}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-wide v2, p0, Lcom/ubix/ssp/ad/k/a;->p0:J

    const-wide/16 v4, 0x1388

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/ubix/ssp/ad/k/a;->setTimer(J)V

    const v0, 0xdbc06

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->w:Z

    if-eqz v0, :cond_3

    const v0, 0x7a184

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/b;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/b;->b(Landroid/os/Bundle;)Z

    :cond_3
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->x:Z

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/k/a;->setIsDownloadAd(Z)V

    const-string v0, "AD_SOURCE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7a126

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x66000000

    const/high16 v4, 0x40800000    # 4.0f

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return v1
.end method

.method public c(I)V
    .locals 7

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->O:Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->l:Lcom/ubix/ssp/ad/e/b0/g;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/e;->getDuration()J

    move-result-wide v3

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->l:Lcom/ubix/ssp/ad/e/b0/g;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/e;->getDuration()J

    move-result-wide v5

    const/16 v2, 0x64

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/ubix/ssp/ad/k/a;->a(IJJ)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/g/k/j;->c(I)V

    :cond_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->c0:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->d0:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/ubix/ssp/ad/k/a;->e0:F

    iget v2, p0, Lcom/ubix/ssp/ad/k/a;->k0:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->i0:Z

    const/4 v1, 0x0

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x40200000    # 2.5f

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const v6, 0x3ca3d70a    # 0.02f

    if-nez v0, :cond_4

    iget v0, p0, Lcom/ubix/ssp/ad/k/a;->k0:F

    sub-float/2addr v0, v6

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->k0:F

    iget v0, p0, Lcom/ubix/ssp/ad/k/a;->f0:F

    const/4 v6, 0x0

    cmpg-float v7, v0, v6

    if-gtz v7, :cond_1

    iput v6, p0, Lcom/ubix/ssp/ad/k/a;->f0:F

    iput-boolean v5, p0, Lcom/ubix/ssp/ad/k/a;->i0:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const/high16 v5, 0x41200000    # 10.0f

    cmpg-float v5, v0, v5

    if-gtz v5, :cond_2

    sub-float/2addr v0, v4

    goto :goto_0

    :cond_2
    const/high16 v4, 0x41a00000    # 20.0f

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_3

    sub-float/2addr v0, v3

    goto :goto_0

    :cond_3
    sub-float/2addr v0, v2

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/ubix/ssp/ad/k/a;->k0:F

    add-float/2addr v0, v6

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->k0:F

    iget v0, p0, Lcom/ubix/ssp/ad/k/a;->f0:F

    const/high16 v6, 0x42480000    # 50.0f

    cmpl-float v7, v0, v6

    if-ltz v7, :cond_5

    iput v6, p0, Lcom/ubix/ssp/ad/k/a;->f0:F

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/k/a;->i0:Z

    iget v0, p0, Lcom/ubix/ssp/ad/k/a;->j0:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->j0:I

    goto :goto_1

    :cond_5
    const/high16 v5, 0x42200000    # 40.0f

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_6

    add-float/2addr v0, v4

    goto :goto_0

    :cond_6
    const/high16 v4, 0x41f00000    # 30.0f

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_7

    add-float/2addr v0, v3

    goto :goto_0

    :cond_7
    add-float/2addr v0, v2

    :goto_0
    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->f0:F

    :goto_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->d0:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/ubix/ssp/ad/k/a;->l0:I

    int-to-float v2, v2

    iget v3, p0, Lcom/ubix/ssp/ad/k/a;->f0:F

    add-float/2addr v2, v3

    iget v4, p0, Lcom/ubix/ssp/ad/k/a;->m0:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget v0, p0, Lcom/ubix/ssp/ad/k/a;->j0:I

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->c0:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/ubix/ssp/ad/k/a;->d0:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void

    :cond_8
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget v0, p0, Lcom/ubix/ssp/ad/k/a;->I:I

    invoke-virtual {p0, v0, p1}, Lcom/ubix/ssp/ad/b;->a(ILandroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/b;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/b;->a(Landroid/view/MotionEvent;)V

    :try_start_0
    iget p1, p0, Lcom/ubix/ssp/ad/b;->k:F

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "__TRI_VAL__"

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/16 v2, 0xa

    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v0, "__INSIDE_AREA__"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v0, "__CLICK_AREA__"

    const-string v1, "11"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v0, "__CLICK_TRIGGER__"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/ubix/ssp/ad/b;->b:I

    iget-object v1, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    invoke-interface {p1, v0, p0, v1}, Lcom/ubix/ssp/ad/g/k/b;->b(ILandroid/view/View;Ljava/util/HashMap;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public e(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/g/k/b;->e(I)V

    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/g/k/b;->f(I)V

    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/g/k/j;->g(I)V

    :cond_0
    return-void
.end method

.method public getAppInfoTop()I
    .locals 3

    const v0, 0xe0a25

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    return v0

    :cond_0
    const v0, 0x7a184

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getInterface()Lcom/ubix/ssp/ad/g/k/b;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    return-object v0
.end method

.method public h(I)V
    .locals 3

    .line 2
    const v0, 0xdbc06

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/k/a;->l:Lcom/ubix/ssp/ad/e/b0/g;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/ubix/ssp/ad/e/b0/e;->e:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->E:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->E:Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/g/k/j;->h(I)V

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    const/16 v2, 0x48

    invoke-static {v0, v1, v2}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean p1, p0, Lcom/ubix/ssp/ad/k/a;->s:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a;->m:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public i(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/g/k/b;->i(I)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/ubix/ssp/ad/b;->j()V

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->B:Lcom/ubix/ssp/ad/e/a0/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/g;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/ubix/ssp/ad/k/a;->x()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->l:Lcom/ubix/ssp/ad/e/b0/g;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/g;->p()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/s;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public j(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/g/k/j;->j(I)V

    :cond_0
    return-void
.end method

.method public n()Z
    .locals 2

    .line 2
    iget v0, p0, Lcom/ubix/ssp/ad/k/a;->I:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "__CLICK_AREA__"

    const-string v2, "__CLICK_TRIGGER__"

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/ubix/ssp/ad/b;->b:I

    iget-object v2, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    invoke-interface {v0, v1, p1, v2}, Lcom/ubix/ssp/ad/g/k/b;->b(ILandroid/view/View;Ljava/util/HashMap;)V

    return-void

    :sswitch_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ubix/ssp/ad/b;->b:I

    invoke-interface {p1, v0}, Lcom/ubix/ssp/ad/g/k/b;->a(I)V

    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v3, "2"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    iget v1, p0, Lcom/ubix/ssp/ad/b;->b:I

    iget-object v2, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    invoke-interface {v0, v1, p1, v2}, Lcom/ubix/ssp/ad/g/k/b;->b(ILandroid/view/View;Ljava/util/HashMap;)V

    return-void

    :sswitch_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v3, "13"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    iget v1, p0, Lcom/ubix/ssp/ad/b;->b:I

    iget-object v2, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    invoke-interface {v0, v1, p1, v2}, Lcom/ubix/ssp/ad/g/k/b;->b(ILandroid/view/View;Ljava/util/HashMap;)V

    return-void

    :sswitch_3
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ubix/ssp/ad/g/k/b;->e(I)V

    return-void

    :sswitch_4
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a;->l:Lcom/ubix/ssp/ad/e/b0/g;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/ubix/ssp/ad/e/b0/e;->t:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/k/a;->setMute(Z)V

    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7a122 -> :sswitch_4
        0x7a124 -> :sswitch_3
        0x7a125 -> :sswitch_2
        0xde314 -> :sswitch_1
        0xde509 -> :sswitch_1
        0xe0aed -> :sswitch_0
    .end sparse-switch
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/g/k/b;->e(I)V

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 24

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    iget v0, v1, Lcom/ubix/ssp/ad/k/a;->H:I

    const/4 v7, 0x1

    if-eq v0, v7, :cond_1

    const/4 v8, 0x3

    if-ne v0, v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v7

    :goto_1
    iget-object v0, v1, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "__WIDTH__"

    invoke-virtual {v0, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "__HEIGHT__"

    invoke-virtual {v0, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "_"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "__IMP_AREA__"

    invoke-virtual {v0, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "adLeft"

    invoke-virtual {v0, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "adRight"

    invoke-virtual {v0, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "adTop"

    invoke-virtual {v0, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "adBottom"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v10, v0, :cond_10

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v12

    const v13, 0x7a1e9

    if-eq v12, v13, :cond_f

    const v13, 0x7a1ea

    const/high16 v14, 0x42180000    # 38.0f

    if-eq v12, v13, :cond_e

    const/high16 v15, 0x41f00000    # 30.0f

    const/high16 v16, 0x429e0000    # 79.0f

    const/high16 v17, 0x424c0000    # 51.0f

    const/high16 v18, 0x41200000    # 10.0f

    packed-switch v12, :pswitch_data_0

    const v14, 0xde3dd

    const/high16 p1, 0x41800000    # 16.0f

    const v13, 0x7a184

    const/high16 v16, 0x40a00000    # 5.0f

    sparse-switch v12, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    invoke-static/range {v18 .. v18}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v12

    invoke-static/range {v17 .. v17}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v13

    invoke-static/range {v18 .. v18}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v14

    const/high16 v15, 0x41c00000    # 24.0f

    invoke-static {v15}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v15

    add-int/2addr v14, v15

    invoke-static/range {v17 .. v17}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v15

    const/high16 v16, 0x41500000    # 13.0f

    invoke-static/range {v16 .. v16}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_4

    :sswitch_1
    invoke-static/range {p1 .. p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v12

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v14, v15

    const/high16 v15, 0x40400000    # 3.0f

    invoke-static {v15}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v16

    sub-int v14, v14, v16

    invoke-static/range {p1 .. p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v16

    move/from16 v17, v15

    sub-int v15, v4, v16

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-static/range {v17 .. v17}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v16

    sub-int v13, v13, v16

    invoke-virtual {v0, v12, v14, v15, v13}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sub-int v12, v4, v2

    const/high16 v13, 0x42000000    # 32.0f

    invoke-static {v13}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v13

    sub-int/2addr v12, v13

    iput v12, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_4

    :sswitch_2
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v11

    :cond_2
    sub-int v12, v4, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int v13, v12, v13

    div-int/lit8 v13, v13, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int v14, v11, v14

    if-eqz v8, :cond_3

    const/high16 v15, 0x41700000    # 15.0f

    invoke-static {v15}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v16

    add-int v14, v14, v16

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v12, v12, v16

    div-int/lit8 v12, v12, 0x2

    invoke-static {v15}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v15

    add-int/2addr v15, v11

    :goto_3
    invoke-virtual {v0, v13, v14, v12, v15}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    :cond_3
    invoke-static/range {v16 .. v16}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v12, v15

    div-int/lit8 v12, v12, 0x2

    invoke-static/range {v16 .. v16}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v15

    sub-int v15, v11, v15

    goto :goto_3

    :goto_4
    move v12, v8

    :cond_4
    :goto_5
    const/4 v8, 0x0

    goto/16 :goto_d

    :sswitch_3
    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v12

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result v12

    float-to-double v6, v12

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v12

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/ubix/ssp/ad/e/a0/r;->c(Landroid/content/Context;)I

    move-result v12

    int-to-double v13, v12

    if-eqz v8, :cond_5

    const-wide v16, 0x3fc0a3d70a3d70a4L    # 0.13

    goto :goto_6

    :cond_5
    const-wide v16, 0x3fc3333333333333L    # 0.15

    :goto_6
    mul-double v13, v13, v16

    double-to-int v12, v13

    sub-int v13, v4, v2

    int-to-double v13, v13

    const-wide v16, 0x3fe999999999999aL    # 0.8

    mul-double v16, v16, v13

    const-wide v20, 0x3fcb22d0e5604189L    # 0.212

    move-wide/from16 v22, v6

    mul-double v6, v16, v20

    double-to-int v6, v6

    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    const-wide/high16 v20, 0x4039000000000000L    # 25.0

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    move/from16 p1, v6

    div-double v6, v20, v22

    double-to-int v6, v6

    const v7, 0x7a184

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    move v12, v8

    goto :goto_a

    :cond_6
    const/4 v7, 0x0

    :goto_7
    const-wide v19, 0x3fb999999999999aL    # 0.1

    mul-double v19, v19, v13

    move/from16 v18, v7

    move v12, v8

    int-to-double v7, v6

    move/from16 v21, v6

    move-wide/from16 v22, v7

    sub-double v6, v19, v22

    double-to-int v6, v6

    sub-int v7, v18, p1

    const/high16 v8, 0x42820000    # 65.0f

    if-eqz v12, :cond_7

    move/from16 v19, v15

    goto :goto_8

    :cond_7
    move/from16 v19, v8

    :goto_8
    :try_start_1
    invoke-static/range {v19 .. v19}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v19

    sub-int v7, v7, v19

    sub-int v7, v7, v21

    const-wide v19, 0x3feccccccccccccdL    # 0.9

    mul-double v13, v13, v19

    add-double v13, v13, v22

    double-to-int v13, v13

    if-eqz v12, :cond_8

    goto :goto_9

    :cond_8
    move v15, v8

    :goto_9
    invoke-static {v15}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v8

    sub-int v8, v18, v8

    add-int v8, v8, v21

    invoke-virtual {v0, v6, v7, v13, v8}, Landroid/view/View;->layout(IIII)V

    check-cast v0, Lcom/ubix/ssp/ad/e/c;

    mul-int/lit8 v6, v21, 0x2

    int-to-double v7, v6

    add-double v7, v16, v7

    double-to-int v7, v7

    add-int v6, p1, v6

    invoke-virtual {v0, v7, v6}, Lcom/ubix/ssp/ad/e/c;->a(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v0

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    :sswitch_4
    move v12, v8

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v11

    :cond_9
    sub-int v6, v4, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v6, v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int v8, v11, v8

    invoke-static/range {v16 .. v16}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v13

    if-eqz v12, :cond_a

    add-int/2addr v8, v13

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v6, v13

    div-int/lit8 v6, v6, 0x2

    invoke-static/range {v16 .. v16}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v13

    add-int/2addr v13, v11

    :goto_b
    invoke-virtual {v0, v7, v8, v6, v13}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_5

    :cond_a
    sub-int/2addr v8, v13

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v6, v13

    div-int/lit8 v6, v6, 0x2

    invoke-static/range {v16 .. v16}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v13

    sub-int v13, v11, v13

    goto :goto_b

    :sswitch_5
    move v12, v8

    :try_start_2
    iget v6, v1, Lcom/ubix/ssp/ad/k/a;->Q:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    sub-int v6, v4, v2

    sub-int v8, v5, v3

    :try_start_3
    invoke-direct {v1, v6, v8}, Lcom/ubix/ssp/ad/k/a;->e(II)Z

    move-result v13

    if-nez v13, :cond_4

    move-object v13, v0

    check-cast v13, Lcom/ubix/ssp/ad/e/t/a/e;

    sget-object v14, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-direct {v1, v6, v8}, Lcom/ubix/ssp/ad/k/a;->d(II)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-lez v8, :cond_4

    const v8, 0xdbc06

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v8, v6, Landroid/graphics/Rect;->left:I

    iget v13, v6, Landroid/graphics/Rect;->top:I

    iget v14, v6, Landroid/graphics/Rect;->right:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v8, v13, v14, v6}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_5

    :cond_b
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_5

    :catch_2
    move-exception v0

    const/4 v7, 0x1

    goto/16 :goto_a

    :sswitch_6
    move v12, v8

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {v6}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v6

    sub-int v6, v5, v6

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v6, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_d

    :pswitch_0
    move v12, v8

    const v6, 0x7a123

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v14

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v14

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v6, v6, v16

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v15, v6

    invoke-virtual {v0, v8, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_5

    :pswitch_1
    move v12, v8

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v6}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v4, v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    if-ge v8, v6, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    :cond_c
    invoke-static/range {v18 .. v18}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v8

    sub-int v8, v4, v8

    sub-int/2addr v8, v6

    iget v6, v1, Lcom/ubix/ssp/ad/k/a;->D:I

    sub-int/2addr v8, v6

    invoke-static/range {v17 .. v17}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v6

    invoke-static/range {v18 .. v18}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v13

    sub-int v13, v4, v13

    iget v14, v1, Lcom/ubix/ssp/ad/k/a;->D:I

    sub-int/2addr v13, v14

    invoke-static/range {v16 .. v16}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v14

    invoke-virtual {v0, v8, v6, v13, v14}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_5

    :pswitch_2
    move v12, v8

    invoke-static {v15}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v6

    sub-int v6, v4, v6

    const/high16 v8, 0x425c0000    # 55.0f

    invoke-static {v8}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v8

    invoke-static/range {v18 .. v18}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v13

    sub-int v13, v4, v13

    const/high16 v14, 0x42960000    # 75.0f

    invoke-static {v14}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v14

    :goto_c
    invoke-virtual {v0, v6, v8, v13, v14}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_5

    :pswitch_3
    move v12, v8

    const/high16 p1, 0x41800000    # 16.0f

    invoke-static/range {p1 .. p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v6

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/k/a;->getAppInfoTop()I

    move-result v8

    const/high16 v13, 0x41400000    # 12.0f

    invoke-static {v13}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v13

    sub-int/2addr v8, v13

    const/high16 v13, 0x42380000    # 46.0f

    invoke-static {v13}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v13

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/k/a;->getAppInfoTop()I

    move-result v14

    goto :goto_c

    :pswitch_4
    move v12, v8

    iget-boolean v6, v1, Lcom/ubix/ssp/ad/k/a;->t0:Z

    if-eqz v6, :cond_d

    invoke-static/range {v18 .. v18}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v6

    const/high16 v8, 0x41d00000    # 26.0f

    invoke-static {v8}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v13

    add-int/2addr v6, v13

    invoke-static/range {v17 .. v17}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v13

    invoke-static {v14}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v14

    invoke-static {v8}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v8

    add-int/2addr v14, v8

    invoke-static/range {v16 .. v16}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v8

    invoke-virtual {v0, v6, v13, v14, v8}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_5

    :cond_d
    invoke-static/range {v18 .. v18}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v6

    invoke-static/range {v17 .. v17}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v8

    invoke-static {v14}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v13

    invoke-static/range {v16 .. v16}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v14

    goto :goto_c

    :pswitch_5
    move v12, v8

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_5

    :cond_e
    move v12, v8

    const v6, 0x7a126

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    int-to-double v7, v9

    const-wide v15, 0x3fef5c28f5c28f5cL    # 0.98

    mul-double/2addr v7, v15

    double-to-int v13, v7

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    sub-int v15, v15, v16

    invoke-static {v14}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v16

    sub-int v15, v15, v16

    move/from16 p1, v14

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    int-to-double v1, v14

    add-double/2addr v7, v1

    double-to-int v1, v7

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static/range {p1 .. p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v6

    sub-int/2addr v2, v6

    invoke-virtual {v0, v13, v15, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_5

    :cond_f
    move v12, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v9, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v9

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8, v2, v6}, Landroid/view/View;->layout(IIII)V

    :goto_d
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p2

    move v8, v12

    goto/16 :goto_2

    :cond_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7a121
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x7a184 -> :sswitch_6
        0xdbc06 -> :sswitch_5
        0xde314 -> :sswitch_4
        0xde3dd -> :sswitch_3
        0xde509 -> :sswitch_2
        0xe0a25 -> :sswitch_1
        0xe0aed -> :sswitch_0
    .end sparse-switch
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/k/a;->H:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/ubix/ssp/ad/g/k/h;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/ubix/ssp/ad/g/k/h;

    invoke-interface {v0}, Lcom/ubix/ssp/ad/g/k/h;->a()Z

    move-result v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    check-cast v1, Lcom/ubix/ssp/ad/g/k/h;

    invoke-interface {v1}, Lcom/ubix/ssp/ad/g/k/h;->c()I

    move-result v1

    iput v1, p0, Lcom/ubix/ssp/ad/k/a;->q0:I

    iget-object v1, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    check-cast v1, Lcom/ubix/ssp/ad/g/k/h;

    invoke-interface {v1}, Lcom/ubix/ssp/ad/g/k/h;->d()I

    move-result v4

    iget-boolean v1, p0, Lcom/ubix/ssp/ad/k/a;->O:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-wide v6, p0, Lcom/ubix/ssp/ad/k/a;->A:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    const/16 v5, 0x64

    move-wide v8, v6

    move-object v2, p0

    :try_start_1
    invoke-direct/range {v2 .. v9}, Lcom/ubix/ssp/ad/k/a;->a(ZIIJJ)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_1
    if-eqz p1, :cond_1

    iget-object v0, v2, Lcom/ubix/ssp/ad/k/a;->B:Lcom/ubix/ssp/ad/e/a0/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/g;->d()V

    goto :goto_2

    :cond_1
    iget-object v0, v2, Lcom/ubix/ssp/ad/k/a;->B:Lcom/ubix/ssp/ad/e/a0/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/g;->c()V

    :cond_2
    :goto_2
    if-eqz p1, :cond_4

    sget p1, Lcom/ubix/ssp/ad/d/b;->E:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-boolean p1, v2, Lcom/ubix/ssp/ad/b;->d:Z

    if-nez p1, :cond_5

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/k/a;->setShakeSensor(Landroid/view/View;)V

    return-void

    :cond_4
    iget-object p1, v2, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/s;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    return-void

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 9

    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/b;->onWindowVisibilityChanged(I)V

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/ubix/ssp/ad/g/k/h;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/ubix/ssp/ad/g/k/h;

    invoke-interface {v0}, Lcom/ubix/ssp/ad/g/k/h;->a()Z

    move-result v2

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    check-cast v0, Lcom/ubix/ssp/ad/g/k/h;

    invoke-interface {v0}, Lcom/ubix/ssp/ad/g/k/h;->c()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->q0:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    check-cast v0, Lcom/ubix/ssp/ad/g/k/h;

    invoke-interface {v0}, Lcom/ubix/ssp/ad/g/k/h;->d()I

    move-result v3

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/a;->O:Z

    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    :cond_0
    iget v0, p0, Lcom/ubix/ssp/ad/k/a;->K:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    iget-wide v5, p0, Lcom/ubix/ssp/ad/k/a;->A:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v4, 0x64

    move-wide v7, v5

    move-object v1, p0

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/ubix/ssp/ad/k/a;->a(ZIIJJ)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, p0

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_1
    iget-boolean v0, v1, Lcom/ubix/ssp/ad/k/a;->P:Z

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/ubix/ssp/ad/k/a;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/ubix/ssp/ad/k/a;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz v0, :cond_3

    invoke-interface {v0, v2, p0}, Lcom/ubix/ssp/ad/g/k/b;->a(ILandroid/view/View;)V

    :cond_3
    if-nez p1, :cond_5

    sget v0, Lcom/ubix/ssp/ad/d/b;->E:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    iget-boolean v0, v1, Lcom/ubix/ssp/ad/b;->d:Z

    if-nez v0, :cond_6

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/k/a;->setShakeSensor(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    iget-object v0, v1, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/s;->f()V

    :cond_6
    :goto_2
    iget-boolean v0, v1, Lcom/ubix/ssp/ad/k/a;->P:Z

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz v0, :cond_7

    invoke-interface {v0, v2, p1}, Lcom/ubix/ssp/ad/g/k/j;->b(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    return-void

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public r()Landroid/view/ViewGroup;
    .locals 0

    .line 1
    return-object p0
.end method

.method public setInnerListener(Lcom/ubix/ssp/ad/g/k/b;)V
    .locals 1

    instance-of v0, p1, Lcom/ubix/ssp/ad/g/k/h;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ubix/ssp/ad/g/k/h;

    :goto_0
    iput-object p1, p0, Lcom/ubix/ssp/ad/k/a;->G:Lcom/ubix/ssp/ad/g/k/j;

    return-void

    :cond_0
    check-cast p1, Lcom/ubix/ssp/ad/g/k/j;

    goto :goto_0
.end method

.method public setIsDownloadAd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/k/a;->x:Z

    return-void
.end method

.method public setMute(Z)V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->l:Lcom/ubix/ssp/ad/e/b0/g;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/b0/e;->setMute(Z)V

    const v0, 0x7a122

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const-string p1, "ubix/ic_volume_off.webp"

    :goto_0
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-string p1, "ubix/ic_volume_on.webp"

    goto :goto_0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setShakeSensor(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/b;->setShakeSensor(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    new-instance v1, Lcom/ubix/ssp/ad/k/a$g;

    invoke-direct {v1, p0, p1}, Lcom/ubix/ssp/ad/k/a$g;-><init>(Lcom/ubix/ssp/ad/k/a;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/a0/s;->a(Lcom/ubix/ssp/ad/e/a0/s$e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setShowAdLogo(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/k/a;->u:Z

    const v0, 0x7a123

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setShowBanner(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/k/a;->w:Z

    const v0, 0x7a184

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setShowCloseBtnDelay(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/b;->setShowCloseBtnDelay(I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/k/a;->b(Z)V

    return-void
.end method

.method public setShowCountDown(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/k/a;->t:Z

    const v0, 0x7a125

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setShowVolumeSwitch(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/k/a;->s:Z

    const v0, 0x7a122

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setVideoDisplayType(I)V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->l:Lcom/ubix/ssp/ad/e/b0/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/b0/e;->setVideoImageDisplayType(I)V

    :cond_0
    return-void
.end method

.method public t()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->l:Lcom/ubix/ssp/ad/e/b0/g;

    iget-boolean v0, v0, Lcom/ubix/ssp/ad/e/b0/e;->t:Z

    return v0
.end method

.method public u()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->l:Lcom/ubix/ssp/ad/e/b0/g;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/e;->i()V

    return-void
.end method

.method public v()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->l:Lcom/ubix/ssp/ad/e/b0/g;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/e;->j()V

    return-void
.end method

.method public w()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->l:Lcom/ubix/ssp/ad/e/b0/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/e;->i()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->l:Lcom/ubix/ssp/ad/e/b0/g;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/g;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public y()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a;->a0:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ubix/ic_slide_hand.webp"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/k/a;->c0:Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/k/a;->g0:J

    new-instance v0, Lcom/ubix/ssp/ad/k/a$h;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/k/a$h;-><init>(Lcom/ubix/ssp/ad/k/a;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/k/a;->a0:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/ubix/ssp/ad/k/a;->a0:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/k/a;->b0:Landroid/os/Handler;

    const-wide/16 v2, 0x10

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    const v0, 0x7a188

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7a184

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/ubix/ssp/ad/k/a;->l0:I

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ubix/ssp/ad/k/a;->m0:I

    :cond_1
    :goto_0
    return-void
.end method
