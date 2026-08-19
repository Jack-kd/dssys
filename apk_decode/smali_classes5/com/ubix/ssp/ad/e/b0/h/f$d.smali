.class final Lcom/ubix/ssp/ad/e/b0/h/f$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/b0/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/ubix/ssp/ad/e/b0/h/f;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/b0/h/f;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/h/f$d;->b:Lcom/ubix/ssp/ad/e/b0/h/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/b0/h/f$d;->a:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/f$d;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/f$d;->b:Lcom/ubix/ssp/ad/e/b0/h/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/h/f;->a(Lcom/ubix/ssp/ad/e/b0/h/f;)V

    return-void
.end method
