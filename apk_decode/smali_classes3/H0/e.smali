.class public final synthetic LH0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LH0/f;

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:LI0/b;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:LI0/a;

.field public final synthetic g:[J

.field public final synthetic h:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(LH0/f;Ljava/io/File;LI0/b;Ljava/lang/String;LI0/a;[JLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH0/e;->b:LH0/f;

    iput-object p2, p0, LH0/e;->c:Ljava/io/File;

    iput-object p3, p0, LH0/e;->d:LI0/b;

    iput-object p4, p0, LH0/e;->e:Ljava/lang/String;

    iput-object p5, p0, LH0/e;->f:LI0/a;

    iput-object p6, p0, LH0/e;->g:[J

    iput-object p7, p0, LH0/e;->h:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, LH0/e;->b:LH0/f;

    iget-object v1, p0, LH0/e;->c:Ljava/io/File;

    iget-object v2, p0, LH0/e;->d:LI0/b;

    iget-object v3, p0, LH0/e;->e:Ljava/lang/String;

    iget-object v4, p0, LH0/e;->f:LI0/a;

    iget-object v5, p0, LH0/e;->g:[J

    iget-object v6, p0, LH0/e;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-static/range {v0 .. v6}, LH0/f;->a(LH0/f;Ljava/io/File;LI0/b;Ljava/lang/String;LI0/a;[JLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method
