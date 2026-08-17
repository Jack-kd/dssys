.class public final synthetic Lk1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/varbto/internal/c;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/util/Set;

.field public final synthetic e:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/varbto/internal/c;Ljava/lang/String;Ljava/util/Set;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/d;->b:Lcom/varbto/internal/c;

    iput-object p2, p0, Lk1/d;->c:Ljava/lang/String;

    iput-object p3, p0, Lk1/d;->d:Ljava/util/Set;

    iput-object p4, p0, Lk1/d;->e:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk1/d;->b:Lcom/varbto/internal/c;

    iget-object v1, p0, Lk1/d;->c:Ljava/lang/String;

    iget-object v2, p0, Lk1/d;->d:Ljava/util/Set;

    iget-object v3, p0, Lk1/d;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, v1, v2, v3}, Lcom/varbto/internal/c;->g(Ljava/lang/String;Ljava/util/Set;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
