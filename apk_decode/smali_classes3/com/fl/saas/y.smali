.class Lcom/fl/saas/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Lcom/fl/saas/N;

.field public final c:Lcom/fl/saas/D;

.field public final d:Lcom/fl/saas/X0;

.field public final e:Lcom/fl/saas/Q;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/fl/saas/N;Lcom/fl/saas/D;Lcom/fl/saas/X0;Lcom/fl/saas/Q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fl/saas/y;->a:Ljava/io/File;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fl/saas/y;->b:Lcom/fl/saas/N;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fl/saas/y;->c:Lcom/fl/saas/D;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fl/saas/y;->d:Lcom/fl/saas/X0;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/fl/saas/y;->e:Lcom/fl/saas/Q;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/y;->b:Lcom/fl/saas/N;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/fl/saas/N;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/fl/saas/y;->a:Ljava/io/File;

    .line 10
    .line 11
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
