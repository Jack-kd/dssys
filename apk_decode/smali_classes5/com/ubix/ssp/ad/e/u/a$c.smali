.class Lcom/ubix/ssp/ad/e/u/a$c;
.super Lcom/ubix/ssp/ad/e/x/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/u/a;->a(Ljava/lang/String;Lcom/ubix/ssp/open/AdLoadCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ubix/ssp/open/AdLoadCallbackListener;

.field final synthetic d:Lcom/ubix/ssp/ad/e/u/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/u/a;Ljava/lang/String;Lcom/ubix/ssp/open/AdLoadCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/u/a$c;->d:Lcom/ubix/ssp/ad/e/u/a;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/u/a$c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/u/a$c;->c:Lcom/ubix/ssp/open/AdLoadCallbackListener;

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/x/a$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/e/y/a/g;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->y()Ljava/util/concurrent/Executor;

    sget-object v0, Lcom/ubix/ssp/ad/e/a0/c;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/ubix/ssp/ad/e/u/a$c$a;

    invoke-direct {v1, p0, p1}, Lcom/ubix/ssp/ad/e/u/a$c$a;-><init>(Lcom/ubix/ssp/ad/e/u/a$c;Lcom/ubix/ssp/ad/e/y/a/g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/ubix/ssp/ad/e/y/a/g;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/u/a$c;->a(Lcom/ubix/ssp/ad/e/y/a/g;)V

    return-void
.end method

.method public b(Lcom/ubix/ssp/ad/e/x/d;)V
    .locals 1

    new-instance v0, Lcom/ubix/ssp/ad/e/u/a$c$b;

    invoke-direct {v0, p0, p1}, Lcom/ubix/ssp/ad/e/u/a$c$b;-><init>(Lcom/ubix/ssp/ad/e/u/a$c;Lcom/ubix/ssp/ad/e/x/d;)V

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/b;->b(Ljava/lang/Runnable;)V

    return-void
.end method
