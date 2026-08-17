.class public final Lkotlinx/coroutines/X;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/X;

.field public static final b:Lkotlinx/coroutines/H;

.field public static final c:Lkotlinx/coroutines/H;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/X;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlinx/coroutines/X;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlinx/coroutines/X;->a:Lkotlinx/coroutines/X;

    .line 7
    .line 8
    sget-object v0, LH1/b;->h:LH1/b;

    .line 9
    .line 10
    sput-object v0, Lkotlinx/coroutines/X;->b:Lkotlinx/coroutines/H;

    .line 11
    .line 12
    sget-object v0, Lkotlinx/coroutines/R0;->b:Lkotlinx/coroutines/R0;

    .line 13
    .line 14
    sput-object v0, Lkotlinx/coroutines/X;->c:Lkotlinx/coroutines/H;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final a()Lkotlinx/coroutines/H;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/X;->b:Lkotlinx/coroutines/H;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final b()Lkotlinx/coroutines/H;
    .locals 1

    .line 1
    sget-object v0, LH1/a;->c:LH1/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final c()Lkotlinx/coroutines/B0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/q;->b:Lkotlinx/coroutines/B0;

    .line 2
    .line 3
    return-object v0
.end method
