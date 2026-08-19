.class public Lcom/umeng/analytics/pro/dx$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/analytics/pro/ef;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/dx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/umeng/analytics/pro/dx$a;->a:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-long v0, p1

    .line 4
    iput-wide v0, p0, Lcom/umeng/analytics/pro/dx$a;->a:J

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/pro/er;)Lcom/umeng/analytics/pro/ed;
    .locals 3

    .line 1
    new-instance v0, Lcom/umeng/analytics/pro/dx;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/umeng/analytics/pro/dx$a;->a:J

    .line 4
    .line 5
    invoke-direct {v0, p1, v1, v2}, Lcom/umeng/analytics/pro/dx;-><init>(Lcom/umeng/analytics/pro/er;J)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
