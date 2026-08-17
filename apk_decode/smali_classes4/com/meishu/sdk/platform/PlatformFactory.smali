.class public Lcom/meishu/sdk/platform/PlatformFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ploatforms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createAll()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/meishu/sdk/core/e;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_5

    .line 11
    .line 12
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/meishu/sdk/core/MSAdConfig;->isUseMediation()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_5

    .line 21
    .line 22
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getGDTVersionName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    new-instance v1, Lcom/meishu/sdk/platform/gdt/GDTSdkPlatform;

    .line 29
    .line 30
    invoke-direct {v1}, Lcom/meishu/sdk/platform/gdt/GDTSdkPlatform;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "GDT"

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getCSJVersionName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    new-instance v1, Lcom/meishu/sdk/platform/csj/CSJSdkPlatform;

    .line 45
    .line 46
    invoke-direct {v1}, Lcom/meishu/sdk/platform/csj/CSJSdkPlatform;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v2, "CSJ"

    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getBDVersionName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    new-instance v1, Lcom/meishu/sdk/platform/bd/BDSdkPlatform;

    .line 61
    .line 62
    invoke-direct {v1}, Lcom/meishu/sdk/platform/bd/BDSdkPlatform;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v2, "BAIDU"

    .line 66
    .line 67
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getKSVersionName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    new-instance v1, Lcom/meishu/sdk/platform/ks/KSSdkPlatform;

    .line 77
    .line 78
    invoke-direct {v1}, Lcom/meishu/sdk/platform/ks/KSSdkPlatform;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v2, "KS"

    .line 82
    .line 83
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getJDVersionName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    if-eqz v1, :cond_4

    .line 91
    .line 92
    new-instance v1, Lcom/meishu/sdk/platform/jd/JDSdkPlatform;

    .line 93
    .line 94
    invoke-direct {v1}, Lcom/meishu/sdk/platform/jd/JDSdkPlatform;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v2, "JD"

    .line 98
    .line 99
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    :cond_4
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getHWVersionName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    if-eqz v1, :cond_5

    .line 107
    .line 108
    new-instance v1, Lcom/meishu/sdk/platform/huawei/HWSdkPlatform;

    .line 109
    .line 110
    invoke-direct {v1}, Lcom/meishu/sdk/platform/huawei/HWSdkPlatform;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v2, "HW"

    .line 114
    .line 115
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    :cond_5
    new-instance v1, Lcom/meishu/sdk/platform/custom/CustomSdkPlatform;

    .line 119
    .line 120
    invoke-direct {v1}, Lcom/meishu/sdk/platform/custom/CustomSdkPlatform;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v2, "CUSTOM"

    .line 124
    .line 125
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    new-instance v1, Lcom/meishu/sdk/platform/ms/e;

    .line 129
    .line 130
    invoke-direct {v1}, Lcom/meishu/sdk/platform/ms/e;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v2, "MS"

    .line 134
    .line 135
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    sput-object v1, Lcom/meishu/sdk/platform/PlatformFactory;->ploatforms:Ljava/util/Set;

    .line 143
    .line 144
    return-object v0
.end method
