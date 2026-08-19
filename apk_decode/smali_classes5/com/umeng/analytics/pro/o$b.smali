.class public Lcom/umeng/analytics/pro/o$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/pro/o;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/pro/o;Ljava/lang/String;J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/umeng/analytics/pro/o$b;->a:Lcom/umeng/analytics/pro/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/umeng/analytics/pro/o$b;->b:Ljava/lang/String;

    .line 3
    iput-wide p3, p0, Lcom/umeng/analytics/pro/o$b;->c:J

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/umeng/analytics/pro/o$b;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/pro/o;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/umeng/analytics/pro/o$b;->a:Lcom/umeng/analytics/pro/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/umeng/analytics/pro/o$b;->b:Ljava/lang/String;

    .line 7
    iput-wide p3, p0, Lcom/umeng/analytics/pro/o$b;->c:J

    .line 8
    iput-object p5, p0, Lcom/umeng/analytics/pro/o$b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/umeng/analytics/pro/o$b;->c:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/umeng/analytics/pro/o$b;->b:Ljava/lang/String;

    return-void
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/umeng/analytics/pro/o$b;->c:J

    return-wide v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/umeng/analytics/pro/o$b;->d:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$b;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
