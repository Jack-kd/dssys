.class public Lio/flutter/embedding/android/KeyboardMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;,
        Lio/flutter/embedding/android/KeyboardMap$PressingGoal;,
        Lio/flutter/embedding/android/KeyboardMap$KeyPair;
    }
.end annotation


# static fields
.field public static final kAndroidPlane:J = 0x1100000000L

.field public static final kUnicodePlane:J = 0x0L

.field public static final kValueMask:J = 0xffffffffL

.field public static final keyCodeToLogical:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final pressingGoals:[Lio/flutter/embedding/android/KeyboardMap$PressingGoal;

.field public static final scanCodeToPhysical:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lio/flutter/embedding/android/KeyboardMap$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/embedding/android/KeyboardMap$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/flutter/embedding/android/KeyboardMap;->scanCodeToPhysical:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v0, Lio/flutter/embedding/android/KeyboardMap$2;

    .line 9
    .line 10
    invoke-direct {v0}, Lio/flutter/embedding/android/KeyboardMap$2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lio/flutter/embedding/android/KeyboardMap;->keyCodeToLogical:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance v0, Lio/flutter/embedding/android/KeyboardMap$PressingGoal;

    .line 16
    .line 17
    new-instance v1, Lio/flutter/embedding/android/KeyboardMap$KeyPair;

    .line 18
    .line 19
    const-wide/32 v2, 0x700e0

    .line 20
    .line 21
    .line 22
    const-wide v4, 0x200000100L

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2, v3, v4, v5}, Lio/flutter/embedding/android/KeyboardMap$KeyPair;-><init>(JJ)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Lio/flutter/embedding/android/KeyboardMap$KeyPair;

    .line 31
    .line 32
    const-wide/32 v3, 0x700e4

    .line 33
    .line 34
    .line 35
    const-wide v5, 0x200000101L

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    invoke-direct {v2, v3, v4, v5, v6}, Lio/flutter/embedding/android/KeyboardMap$KeyPair;-><init>(JJ)V

    .line 41
    .line 42
    .line 43
    filled-new-array {v1, v2}, [Lio/flutter/embedding/android/KeyboardMap$KeyPair;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/16 v2, 0x1000

    .line 48
    .line 49
    invoke-direct {v0, v2, v1}, Lio/flutter/embedding/android/KeyboardMap$PressingGoal;-><init>(I[Lio/flutter/embedding/android/KeyboardMap$KeyPair;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lio/flutter/embedding/android/KeyboardMap$PressingGoal;

    .line 53
    .line 54
    new-instance v2, Lio/flutter/embedding/android/KeyboardMap$KeyPair;

    .line 55
    .line 56
    const-wide/32 v3, 0x700e1

    .line 57
    .line 58
    .line 59
    const-wide v5, 0x200000102L

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    invoke-direct {v2, v3, v4, v5, v6}, Lio/flutter/embedding/android/KeyboardMap$KeyPair;-><init>(JJ)V

    .line 65
    .line 66
    .line 67
    new-instance v3, Lio/flutter/embedding/android/KeyboardMap$KeyPair;

    .line 68
    .line 69
    const-wide/32 v4, 0x700e5

    .line 70
    .line 71
    .line 72
    const-wide v6, 0x200000103L

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    invoke-direct {v3, v4, v5, v6, v7}, Lio/flutter/embedding/android/KeyboardMap$KeyPair;-><init>(JJ)V

    .line 78
    .line 79
    .line 80
    filled-new-array {v2, v3}, [Lio/flutter/embedding/android/KeyboardMap$KeyPair;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const/4 v3, 0x1

    .line 85
    invoke-direct {v1, v3, v2}, Lio/flutter/embedding/android/KeyboardMap$PressingGoal;-><init>(I[Lio/flutter/embedding/android/KeyboardMap$KeyPair;)V

    .line 86
    .line 87
    .line 88
    new-instance v2, Lio/flutter/embedding/android/KeyboardMap$PressingGoal;

    .line 89
    .line 90
    new-instance v3, Lio/flutter/embedding/android/KeyboardMap$KeyPair;

    .line 91
    .line 92
    const-wide/32 v4, 0x700e2

    .line 93
    .line 94
    .line 95
    const-wide v6, 0x200000104L

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    invoke-direct {v3, v4, v5, v6, v7}, Lio/flutter/embedding/android/KeyboardMap$KeyPair;-><init>(JJ)V

    .line 101
    .line 102
    .line 103
    new-instance v4, Lio/flutter/embedding/android/KeyboardMap$KeyPair;

    .line 104
    .line 105
    const-wide/32 v5, 0x700e6

    .line 106
    .line 107
    .line 108
    const-wide v7, 0x200000105L

    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    invoke-direct {v4, v5, v6, v7, v8}, Lio/flutter/embedding/android/KeyboardMap$KeyPair;-><init>(JJ)V

    .line 114
    .line 115
    .line 116
    filled-new-array {v3, v4}, [Lio/flutter/embedding/android/KeyboardMap$KeyPair;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    const/4 v4, 0x2

    .line 121
    invoke-direct {v2, v4, v3}, Lio/flutter/embedding/android/KeyboardMap$PressingGoal;-><init>(I[Lio/flutter/embedding/android/KeyboardMap$KeyPair;)V

    .line 122
    .line 123
    .line 124
    filled-new-array {v0, v1, v2}, [Lio/flutter/embedding/android/KeyboardMap$PressingGoal;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    sput-object v0, Lio/flutter/embedding/android/KeyboardMap;->pressingGoals:[Lio/flutter/embedding/android/KeyboardMap$PressingGoal;

    .line 129
    .line 130
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

.method public static getTogglingGoals()[Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;
    .locals 6

    .line 1
    new-instance v0, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;

    .line 2
    .line 3
    const-wide/32 v2, 0x70039

    .line 4
    .line 5
    .line 6
    const-wide v4, 0x100000104L

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/high16 v1, 0x100000

    .line 12
    .line 13
    invoke-direct/range {v0 .. v5}, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;-><init>(IJJ)V

    .line 14
    .line 15
    .line 16
    filled-new-array {v0}, [Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method
