.class public final Lcom/octopus/ad/internal/c/c$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public volatile a:Z

.field public volatile b:Z

.field public volatile c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private volatile g:J

.field private volatile h:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/octopus/ad/internal/c/c$d;->d:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/octopus/ad/internal/c/c$d;->e:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/octopus/ad/internal/c/c$d;->f:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/octopus/ad/internal/c/c$d;->a()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/c/c$d;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/octopus/ad/internal/c/c$d;->h:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/c/c$d;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/octopus/ad/internal/c/c$d;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/c/c$d;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/octopus/ad/internal/c/c$d;->g:J

    return-wide p1
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/c/c$d;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/octopus/ad/internal/c/c$d;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/octopus/ad/internal/c/c$d;J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/internal/c/c$d;->h:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/octopus/ad/internal/c/c$d;->h:J

    return-wide v0
.end method

.method public static synthetic c(Lcom/octopus/ad/internal/c/c$d;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/octopus/ad/internal/c/c$d;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/octopus/ad/internal/c/c$d;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/internal/c/c$d;->h:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic e(Lcom/octopus/ad/internal/c/c$d;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/internal/c/c$d;->g:J

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/octopus/ad/internal/c/c$d;->g:J

    .line 4
    iput-wide v0, p0, Lcom/octopus/ad/internal/c/c$d;->h:J

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/octopus/ad/internal/c/c$d;->b:Z

    .line 6
    iput-boolean v0, p0, Lcom/octopus/ad/internal/c/c$d;->c:Z

    .line 7
    iput-boolean v0, p0, Lcom/octopus/ad/internal/c/c$d;->a:Z

    return-void
.end method
