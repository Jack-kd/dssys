.class Lcom/ubix/ssp/ad/i/e/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/i/e/a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/ubix/ssp/ad/i/e/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/i/e/a;Z)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/e/a$a;->b:Lcom/ubix/ssp/ad/i/e/a;

    iput-boolean p2, p0, Lcom/ubix/ssp/ad/i/e/a$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/i/e/a$a;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a$a;->b:Lcom/ubix/ssp/ad/i/e/a;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/i/e/a;->n()Landroid/view/animation/Animation;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a$a;->b:Lcom/ubix/ssp/ad/i/e/a;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/i/e/a;->o()Landroid/view/animation/Animation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
