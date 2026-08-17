.class public final Lcom/beizi/fusion/i7$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/i7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private volatile d:J

.field private volatile e:J

.field public volatile f:Z

.field public volatile g:Z

.field public volatile h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/beizi/fusion/i7$d;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/beizi/fusion/i7$d;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/beizi/fusion/i7$d;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/beizi/fusion/i7$d;->a()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/i7$d;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/beizi/fusion/i7$d;->e:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/beizi/fusion/i7$d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/i7$d;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/beizi/fusion/i7$d;J)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/beizi/fusion/i7$d;->e:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/beizi/fusion/i7$d;->e:J

    return-wide v0
.end method

.method public static synthetic b(Lcom/beizi/fusion/i7$d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/i7$d;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/beizi/fusion/i7$d;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/beizi/fusion/i7$d;->d:J

    return-wide p1
.end method

.method public static synthetic c(Lcom/beizi/fusion/i7$d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/i7$d;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/beizi/fusion/i7$d;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/i7$d;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic e(Lcom/beizi/fusion/i7$d;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/i7$d;->d:J

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/beizi/fusion/i7$d;->d:J

    .line 4
    iput-wide v0, p0, Lcom/beizi/fusion/i7$d;->e:J

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/beizi/fusion/i7$d;->g:Z

    .line 6
    iput-boolean v0, p0, Lcom/beizi/fusion/i7$d;->h:Z

    .line 7
    iput-boolean v0, p0, Lcom/beizi/fusion/i7$d;->f:Z

    return-void
.end method
