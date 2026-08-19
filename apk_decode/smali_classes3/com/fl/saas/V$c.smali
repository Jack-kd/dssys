.class final Lcom/fl/saas/V$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/V;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/net/Socket;

.field final synthetic b:Lcom/fl/saas/V;


# direct methods
.method public constructor <init>(Lcom/fl/saas/V;Ljava/net/Socket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/V$c;->b:Lcom/fl/saas/V;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/fl/saas/V$c;->a:Ljava/net/Socket;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/V$c;->b:Lcom/fl/saas/V;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fl/saas/V$c;->a:Ljava/net/Socket;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/fl/saas/V;->a(Lcom/fl/saas/V;Ljava/net/Socket;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
