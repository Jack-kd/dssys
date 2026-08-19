.class public Lcom/beizi/fusion/on;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/ze;


# instance fields
.field private final a:Lcom/beizi/fusion/ze$c;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/beizi/fusion/on;->b:J

    .line 7
    .line 8
    new-instance v0, Lcom/beizi/fusion/ze$c;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/beizi/fusion/ze$c;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/beizi/fusion/on;->a:Lcom/beizi/fusion/ze$c;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a()Lcom/beizi/fusion/ze$c;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/on;->a:Lcom/beizi/fusion/ze$c;

    return-object v0
.end method

.method public a(IFFFFJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/on;->a:Lcom/beizi/fusion/ze$c;

    new-instance v1, Lcom/beizi/fusion/ze$b;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/beizi/fusion/ze$b;-><init>(FFFF)V

    invoke-virtual {v0, p1, v1, p6, p7}, Lcom/beizi/fusion/ze$c;->a(ILcom/beizi/fusion/ze$b;J)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/beizi/fusion/on;->b:J

    return-void
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/on;->b:J

    .line 2
    .line 3
    return-wide v0
.end method
