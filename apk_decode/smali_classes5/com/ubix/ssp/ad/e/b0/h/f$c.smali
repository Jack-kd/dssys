.class final Lcom/ubix/ssp/ad/e/b0/h/f$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/b0/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/net/Socket;

.field final synthetic b:Lcom/ubix/ssp/ad/e/b0/h/f;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/b0/h/f;Ljava/net/Socket;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/h/f$c;->b:Lcom/ubix/ssp/ad/e/b0/h/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/b0/h/f$c;->a:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/f$c;->b:Lcom/ubix/ssp/ad/e/b0/h/f;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/h/f$c;->a:Ljava/net/Socket;

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/b0/h/f;->a(Lcom/ubix/ssp/ad/e/b0/h/f;Ljava/net/Socket;)V

    return-void
.end method
