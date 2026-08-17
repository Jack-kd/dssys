.class public abstract Lcom/ubix/ssp/ad/e/b0/e;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/b0/e$c;,
        Lcom/ubix/ssp/ad/e/b0/e$b;,
        Lcom/ubix/ssp/ad/e/b0/e$a;,
        Lcom/ubix/ssp/ad/e/b0/e$d;
    }
.end annotation


# static fields
.field public static a:Z = false

.field public static b:I

.field public static c:Lcom/ubix/ssp/ad/e/b0/h/f;


# instance fields
.field protected volatile A:Lcom/ubix/ssp/ad/e/b0/e$c;

.field public B:Lcom/ubix/ssp/ad/g/k/j;

.field private C:Lcom/ubix/ssp/ad/e/b0/e$b;

.field protected D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private E:J

.field protected F:Z

.field public G:Lcom/ubix/ssp/ad/e/b0/e$a;

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I

.field public h:Lcom/ubix/ssp/ad/e/b0/a;

.field public i:I

.field public j:I

.field public k:Lcom/ubix/ssp/ad/e/b0/b;

.field public l:I

.field protected m:J

.field protected n:I

.field public o:Lcom/ubix/ssp/ad/e/b0/k/a;

.field public p:Lcom/ubix/ssp/ad/e/b0/j/a;

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:I

.field public v:I

.field protected volatile w:Ljava/util/Timer;

.field protected x:I

.field protected y:I

.field protected z:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ubix/ssp/ad/e/b0/e;-><init>(Landroid/content/Context;IJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 4

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->f:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->g:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->i:I

    iput v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->j:I

    iput v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->l:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/ubix/ssp/ad/e/b0/e;->m:J

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->q:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->r:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->s:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->t:Z

    iput v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->u:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->v:I

    new-instance v0, Lcom/ubix/ssp/ad/e/b0/e$b;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/b0/e$b;-><init>(Lcom/ubix/ssp/ad/e/b0/e;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->C:Lcom/ubix/ssp/ad/e/b0/e$b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->D:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->F:Z

    iput-wide p3, p0, Lcom/ubix/ssp/ad/e/b0/e;->E:J

    invoke-virtual {p0, p2}, Lcom/ubix/ssp/ad/e/b0/e;->setDisplayViewType(I)V

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/b0/e;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/b0/e;->h()V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/b0/e;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->E:J

    return-wide v0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/b0/e;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/ubix/ssp/ad/e/b0/e;->E:J

    return-wide p1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 4
    sget-object v0, Lcom/ubix/ssp/ad/e/b0/e;->c:Lcom/ubix/ssp/ad/e/b0/h/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ubix/ssp/ad/e/b0/h/f$b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ubix/ssp/ad/e/b0/h/f$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/ubix/ssp/ad/e/a0/k;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ubix/ssp/ad/e/b0/h/f$b;->a(Ljava/io/File;)Lcom/ubix/ssp/ad/e/b0/h/f$b;

    move-result-object p0

    new-instance v0, Lcom/ubix/ssp/ad/e/b0/e$d;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/b0/e$d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/e/b0/h/f$b;->a(Lcom/ubix/ssp/ad/e/b0/h/s/c;)Lcom/ubix/ssp/ad/e/b0/h/f$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/b0/h/f$b;->a()Lcom/ubix/ssp/ad/e/b0/h/f;

    move-result-object p0

    sput-object p0, Lcom/ubix/ssp/ad/e/b0/e;->c:Lcom/ubix/ssp/ad/e/b0/h/f;

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/b0/e;)Lcom/ubix/ssp/ad/e/b0/e$b;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/e/b0/e;->C:Lcom/ubix/ssp/ad/e/b0/e$b;

    return-object p0
.end method

.method private d()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addSurfaceView ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->p:Lcom/ubix/ssp/ad/e/b0/j/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ubix/ssp/ad/e/b0/j/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ubix/ssp/ad/e/b0/j/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->p:Lcom/ubix/ssp/ad/e/b0/j/a;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->p:Lcom/ubix/ssp/ad/e/b0/j/a;

    const v1, 0xdbc23

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->p:Lcom/ubix/ssp/ad/e/b0/j/a;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->k:Lcom/ubix/ssp/ad/e/b0/b;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/b0/j/a;->setSurfaceViewCallback(Landroid/view/SurfaceHolder$Callback;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->p:Lcom/ubix/ssp/ad/e/b0/j/a;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private e()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTextureView ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->o:Lcom/ubix/ssp/ad/e/b0/k/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Lcom/ubix/ssp/ad/e/b0/k/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ubix/ssp/ad/e/b0/k/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->o:Lcom/ubix/ssp/ad/e/b0/k/a;

    const v1, 0xdbc22

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->o:Lcom/ubix/ssp/ad/e/b0/k/a;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->k:Lcom/ubix/ssp/ad/e/b0/b;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->o:Lcom/ubix/ssp/ad/e/b0/k/a;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 0

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "state:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    const/4 p2, 0x6

    if-eq p1, p2, :cond_1

    const/4 p2, 0x7

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e;->G:Lcom/ubix/ssp/ad/e/b0/e$a;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/b0/e$a;->d()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e;->G:Lcom/ubix/ssp/ad/e/b0/e$a;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/b0/e$a;->c()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e;->G:Lcom/ubix/ssp/ad/e/b0/e$a;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/b0/e$a;->e()V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e;->G:Lcom/ubix/ssp/ad/e/b0/e$a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/b0/e$a;->b(Z)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/b0/e;->n()V

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/b0/a;I)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->n:I

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e;->h:Lcom/ubix/ssp/ad/e/b0/a;

    iput p2, p0, Lcom/ubix/ssp/ad/e/b0/e;->g:I

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/b0/e;->n()V

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/b0/e;->k:Lcom/ubix/ssp/ad/e/b0/b;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/b0/b;->c()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/b0/e;->k:Lcom/ubix/ssp/ad/e/b0/b;

    invoke-virtual {p2, p1}, Lcom/ubix/ssp/ad/e/b0/b;->a(Lcom/ubix/ssp/ad/e/b0/a;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ori :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/ad/e/b0/e;->c:Lcom/ubix/ssp/ad/e/b0/h/f;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/b0/h/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/ubix/ssp/ad/e/b0/a;

    invoke-direct {v0, p1, p2}, Lcom/ubix/ssp/ad/e/b0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/ubix/ssp/ad/e/b0/e;->a(Lcom/ubix/ssp/ad/e/b0/a;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 7
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/ad/e/b0/e;->c:Lcom/ubix/ssp/ad/e/b0/h/f;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/b0/h/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Lcom/ubix/ssp/ad/e/b0/a;

    invoke-direct {v0, p1, p2}, Lcom/ubix/ssp/ad/e/b0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3}, Lcom/ubix/ssp/ad/e/b0/e;->a(Lcom/ubix/ssp/ad/e/b0/a;I)V

    return-void
.end method

.method public a(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 8
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/ubix/ssp/ad/e/a0/y/c;->a(Landroid/view/View;ZZLjava/util/List;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/ubix/ssp/ad/e/a0/y/c;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()V
    .locals 2

    const-string v0, "---cancelProgressTimer"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->w:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->w:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->w:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->A:Lcom/ubix/ssp/ad/e/b0/e$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->A:Lcom/ubix/ssp/ad/e/b0/e$c;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->A:Lcom/ubix/ssp/ad/e/b0/e$c;

    :cond_1
    return-void
.end method

.method public getCurrentPositionWhenPlaying()J
    .locals 2

    iget v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->f:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->k:Lcom/ubix/ssp/ad/e/b0/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/b;->a()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->k:Lcom/ubix/ssp/ad/e/b0/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/b;->b()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMediaPlayerCallback()Lcom/ubix/ssp/ad/e/b0/e$a;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->G:Lcom/ubix/ssp/ad/e/b0/e$a;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->f:I

    return v0
.end method

.method public h()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->x:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->y:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->f:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->u:I

    new-instance v0, Lcom/ubix/ssp/ad/e/b0/e$a;

    invoke-direct {v0, p0, p0}, Lcom/ubix/ssp/ad/e/b0/e$a;-><init>(Lcom/ubix/ssp/ad/e/b0/e;Lcom/ubix/ssp/ad/e/b0/e;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->G:Lcom/ubix/ssp/ad/e/b0/e$a;

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/b0/e;->l()V

    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->k:Lcom/ubix/ssp/ad/e/b0/b;

    if-eqz v0, :cond_0

    :try_start_0
    iget v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->f:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/ubix/ssp/ad/e/b0/e;->setState(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->k:Lcom/ubix/ssp/ad/e/b0/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/b;->d()V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/b0/e;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 4

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->k:Lcom/ubix/ssp/ad/e/b0/b;

    if-eqz v0, :cond_2

    :try_start_0
    iget-boolean v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->F:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->E:J

    invoke-virtual {v0, v1, v2}, Lcom/ubix/ssp/ad/e/b0/b;->a(J)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->f:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----state:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/b0/e;->getState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/ubix/ssp/ad/e/b0/e;->E:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ubix/ssp/ad/e/b0/e;->setState(I)V

    iget-wide v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->E:J

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/b0/e;->k:Lcom/ubix/ssp/ad/e/b0/b;

    invoke-virtual {v2, v0, v1}, Lcom/ubix/ssp/ad/e/b0/b;->a(J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->k:Lcom/ubix/ssp/ad/e/b0/b;

    iget-boolean v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->t:Z

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/b0/b;->a(Z)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->B:Lcom/ubix/ssp/ad/g/k/j;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/g/k/j;->h(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/b0/e;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public k()V
    .locals 1

    const-string v0, "onStartPlayError"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/b0/e;->m()V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/b0/e;->l()V

    return-void
.end method

.method public l()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startVideo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/ubix/ssp/ad/e/b0/c;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/b0/c;-><init>(Lcom/ubix/ssp/ad/e/b0/e;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->k:Lcom/ubix/ssp/ad/e/b0/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->z:Landroid/media/AudioManager;

    iget v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/b0/e;->d()V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/b0/e;->e()V

    :goto_1
    iput v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->f:I

    iput v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->u:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatePreparing  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    return-void
.end method

.method public m()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--reset  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    iget v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->f:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/b0/e;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/b0/e;->h:Lcom/ubix/ssp/ad/e/b0/a;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/b0/e;->h:Lcom/ubix/ssp/ad/e/b0/a;

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/e/b0/a;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/ubix/ssp/ad/e/b0/f;->a(Landroid/content/Context;Ljava/lang/Object;J)V

    :cond_1
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/b0/e;->g()V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/b0/e;->n()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->C:Lcom/ubix/ssp/ad/e/b0/e$b;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->k:Lcom/ubix/ssp/ad/e/b0/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/b;->e()V

    :cond_2
    return-void
.end method

.method public n()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateNormal  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->f:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->u:I

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/b0/e;->g()V

    return-void
.end method

.method public o()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---startProgressTimer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    iget v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->u:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/b0/e;->g()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->w:Ljava/util/Timer;

    new-instance v0, Lcom/ubix/ssp/ad/e/b0/e$c;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/b0/e$c;-><init>(Lcom/ubix/ssp/ad/e/b0/e;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->A:Lcom/ubix/ssp/ad/e/b0/e$c;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/e;->w:Ljava/util/Timer;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/b0/e;->A:Lcom/ubix/ssp/ad/e/b0/e$c;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x12c

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/b0/e;->r:Z

    return-void
.end method

.method public setCanRePlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/b0/e;->s:Z

    return-void
.end method

.method public setDisplayViewType(I)V
    .locals 0

    iput p1, p0, Lcom/ubix/ssp/ad/e/b0/e;->v:I

    return-void
.end method

.method public setIsMuteStart(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/b0/e;->t:Z

    return-void
.end method

.method public setIsShowPlayButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/b0/e;->q:Z

    return-void
.end method

.method public setMute(Z)V
    .locals 3

    :try_start_0
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/b0/e;->t:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e;->z:Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->C:Lcom/ubix/ssp/ad/e/b0/e$b;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e;->k:Lcom/ubix/ssp/ad/e/b0/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/ubix/ssp/ad/e/b0/b;->a(FF)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e;->z:Landroid/media/AudioManager;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e;->z:Landroid/media/AudioManager;

    :cond_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e;->z:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e;->C:Lcom/ubix/ssp/ad/e/b0/e$b;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e;->k:Lcom/ubix/ssp/ad/e/b0/b;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0}, Lcom/ubix/ssp/ad/e/b0/b;->a(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setState(I)V
    .locals 1

    iput p1, p0, Lcom/ubix/ssp/ad/e/b0/e;->f:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/ubix/ssp/ad/e/b0/e;->a(III)V

    return-void
.end method

.method public setVideoImageDisplayType(I)V
    .locals 0

    sput p1, Lcom/ubix/ssp/ad/e/b0/e;->b:I

    return-void
.end method

.method public setVideoViewListener(Lcom/ubix/ssp/ad/g/k/j;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e;->B:Lcom/ubix/ssp/ad/g/k/j;

    return-void
.end method
