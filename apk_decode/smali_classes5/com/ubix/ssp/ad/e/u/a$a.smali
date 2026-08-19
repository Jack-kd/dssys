.class Lcom/ubix/ssp/ad/e/u/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/u/a;->launchSDK(Ljava/lang/String;Lcom/ubix/ssp/open/UBiXAdSetting;Lcom/ubix/ssp/open/AdLoadCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ubix/ssp/open/AdLoadCallbackListener;

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:Lcom/ubix/ssp/ad/e/u/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/u/a;Ljava/lang/String;Lcom/ubix/ssp/open/AdLoadCallbackListener;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/u/a$a;->e:Lcom/ubix/ssp/ad/e/u/a;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/u/a$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/u/a$a;->b:Lcom/ubix/ssp/open/AdLoadCallbackListener;

    iput-wide p4, p0, Lcom/ubix/ssp/ad/e/u/a$a;->c:J

    iput-wide p6, p0, Lcom/ubix/ssp/ad/e/u/a$a;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/u/a$a;->e:Lcom/ubix/ssp/ad/e/u/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/u/a;->a(Lcom/ubix/ssp/ad/e/u/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/u/a$a;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ubix/ssp/ad/e/u/a;->a(Lcom/ubix/ssp/ad/e/u/a;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/u/a$a;->e:Lcom/ubix/ssp/ad/e/u/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/u/a;->b(Lcom/ubix/ssp/ad/e/u/a;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/u/a$a;->e:Lcom/ubix/ssp/ad/e/u/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/u/a;->a(Lcom/ubix/ssp/ad/e/u/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/c;->j(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/u/a$a;->e:Lcom/ubix/ssp/ad/e/u/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/u/a;->a(Lcom/ubix/ssp/ad/e/u/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/u/a;->a(Lcom/ubix/ssp/ad/e/u/a;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/u/a$a;->e:Lcom/ubix/ssp/ad/e/u/a;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/u/a$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/u/a$a;->b:Lcom/ubix/ssp/open/AdLoadCallbackListener;

    invoke-static {v0, v1, v2}, Lcom/ubix/ssp/ad/e/u/a;->a(Lcom/ubix/ssp/ad/e/u/a;Ljava/lang/String;Lcom/ubix/ssp/open/AdLoadCallbackListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/u/a$a;->e:Lcom/ubix/ssp/ad/e/u/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/u/a;->a(Lcom/ubix/ssp/ad/e/u/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v0

    iget-wide v1, p0, Lcom/ubix/ssp/ad/e/u/a$a;->c:J

    invoke-interface {v0, v1, v2}, Lcom/ubix/ssp/ad/e/w/e;->b(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ubix/ssp/ad/e/u/a$a;->d:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/u/a$a;->e:Lcom/ubix/ssp/ad/e/u/a;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/u/a;->a(Lcom/ubix/ssp/ad/e/u/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/ubix/ssp/ad/e/w/e;->a(J)V

    return-void
.end method
