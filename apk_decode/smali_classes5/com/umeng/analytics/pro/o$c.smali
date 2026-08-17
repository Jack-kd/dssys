.class public Lcom/umeng/analytics/pro/o$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/pro/o;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/pro/o;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/analytics/pro/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/umeng/analytics/pro/o$c;->b:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/umeng/analytics/pro/o$c;->c:Ljava/lang/String;

    .line 4
    iput-boolean p4, p0, Lcom/umeng/analytics/pro/o$c;->d:Z

    .line 5
    iput-wide p5, p0, Lcom/umeng/analytics/pro/o$c;->e:J

    .line 6
    iput-object p7, p0, Lcom/umeng/analytics/pro/o$c;->f:Ljava/lang/String;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/umeng/analytics/pro/o$c;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/pro/o;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/analytics/pro/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/umeng/analytics/pro/o$c;->b:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/umeng/analytics/pro/o$c;->c:Ljava/lang/String;

    .line 11
    iput-boolean p4, p0, Lcom/umeng/analytics/pro/o$c;->d:Z

    .line 12
    iput-wide p5, p0, Lcom/umeng/analytics/pro/o$c;->e:J

    .line 13
    iput-object p7, p0, Lcom/umeng/analytics/pro/o$c;->f:Ljava/lang/String;

    .line 14
    iput-object p8, p0, Lcom/umeng/analytics/pro/o$c;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/pro/o;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/analytics/pro/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/umeng/analytics/pro/o$c;->b:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/umeng/analytics/pro/o$c;->c:Ljava/lang/String;

    .line 18
    iput-boolean p4, p0, Lcom/umeng/analytics/pro/o$c;->d:Z

    .line 19
    iput-wide p5, p0, Lcom/umeng/analytics/pro/o$c;->e:J

    .line 20
    iput-object p7, p0, Lcom/umeng/analytics/pro/o$c;->f:Ljava/lang/String;

    .line 21
    iput-object p8, p0, Lcom/umeng/analytics/pro/o$c;->g:Ljava/lang/String;

    .line 22
    iput-object p9, p0, Lcom/umeng/analytics/pro/o$c;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/umeng/analytics/pro/o$c;->e:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/umeng/analytics/pro/o$c;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/umeng/analytics/pro/o$c;->d:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/umeng/analytics/pro/o$c;->c:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/umeng/analytics/pro/o$c;->f:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/umeng/analytics/pro/o$c;->d:Z

    return v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/umeng/analytics/pro/o$c;->e:J

    return-wide v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/umeng/analytics/pro/o$c;->g:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/umeng/analytics/pro/o$c;->h:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$c;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$c;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
