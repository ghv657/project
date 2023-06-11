--
-- PostgreSQL database dump
--

-- Dumped from database version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: hele_landet_ejendom; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hele_landet_ejendom (
    year integer NOT NULL,
    famhus integer NOT NULL,
    somhus integer NOT NULL,
    ejerlejl integer NOT NULL
);


ALTER TABLE public.hele_landet_ejendom OWNER TO postgres;

--
-- Name: hele_landet_indkomst; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hele_landet_indkomst (
    year integer NOT NULL,
    "15-19" bigint NOT NULL,
    "20-24" bigint NOT NULL,
    "25-29" bigint NOT NULL,
    "30-34" bigint NOT NULL,
    "35-39" bigint NOT NULL,
    "40-44" bigint NOT NULL,
    "45-49" bigint NOT NULL,
    "50-54" bigint NOT NULL,
    "55-59" bigint NOT NULL,
    "60-64" bigint NOT NULL,
    "65-69" bigint NOT NULL,
    "70-74" bigint NOT NULL
);


ALTER TABLE public.hele_landet_indkomst OWNER TO postgres;

--
-- Name: hele_landet_loen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hele_landet_loen (
    year integer NOT NULL,
    "15-19" bigint NOT NULL,
    "20-24" bigint NOT NULL,
    "25-29" bigint NOT NULL,
    "30-34" bigint NOT NULL,
    "35-39" bigint NOT NULL,
    "40-44" bigint NOT NULL,
    "45-49" bigint NOT NULL,
    "50-54" bigint NOT NULL,
    "55-59" bigint NOT NULL,
    "60-64" bigint NOT NULL,
    "65-69" bigint NOT NULL,
    "70-74" bigint NOT NULL
);


ALTER TABLE public.hele_landet_loen OWNER TO postgres;

--
-- Name: hoved_staden_ejendom; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hoved_staden_ejendom (
    year integer NOT NULL,
    famhus integer NOT NULL,
    somhus integer NOT NULL,
    ejerlejl integer NOT NULL
);


ALTER TABLE public.hoved_staden_ejendom OWNER TO postgres;

--
-- Name: hoved_staden_indkomst; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hoved_staden_indkomst (
    year integer NOT NULL,
    "15-19" bigint NOT NULL,
    "20-24" bigint NOT NULL,
    "25-29" bigint NOT NULL,
    "30-34" bigint NOT NULL,
    "35-39" bigint NOT NULL,
    "40-44" bigint NOT NULL,
    "45-49" bigint NOT NULL,
    "50-54" bigint NOT NULL,
    "55-59" bigint NOT NULL,
    "60-64" bigint NOT NULL,
    "65-69" bigint NOT NULL,
    "70-74" bigint NOT NULL
);


ALTER TABLE public.hoved_staden_indkomst OWNER TO postgres;

--
-- Name: hoved_staden_loen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hoved_staden_loen (
    year integer NOT NULL,
    "15-19" bigint NOT NULL,
    "20-24" bigint NOT NULL,
    "25-29" bigint NOT NULL,
    "30-34" bigint NOT NULL,
    "35-39" bigint NOT NULL,
    "40-44" bigint NOT NULL,
    "45-49" bigint NOT NULL,
    "50-54" bigint NOT NULL,
    "55-59" bigint NOT NULL,
    "60-64" bigint NOT NULL,
    "65-69" bigint NOT NULL,
    "70-74" bigint NOT NULL
);


ALTER TABLE public.hoved_staden_loen OWNER TO postgres;

--
-- Data for Name: hele_landet_ejendom; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hele_landet_ejendom (year, famhus, somhus, ejerlejl) FROM stdin;
1992	551	309	421
1993	565	325	419
1994	622	333	452
1995	656	339	474
1996	753	381	514
1997	806	399	536
1998	884	470	631
1999	955	512	716
2000	1047	574	810
2001	1105	616	908
2002	1144	679	984
2003	1199	774	1052
2004	1332	927	1203
2005	1511	1140	1453
2006	1748	1344	1764
2007	1819	1428	1675
2008	1826	1407	1710
2009	1763	1260	1542
2010	1847	1260	1701
2011	1770	1203	1679
2012	1799	1161	1700
2013	1883	1141	1845
2014	1955	1134	1945
2015	2082	1160	2063
2016	2122	1171	2156
2017	2209	1230	2369
2018	2257	1276	2470
2019	2335	1313	2570
2020	2477	1406	2800
2021	2639	1603	3005
\.


--
-- Data for Name: hele_landet_indkomst; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hele_landet_indkomst (year, "15-19", "20-24", "25-29", "30-34", "35-39", "40-44", "45-49", "50-54", "55-59", "60-64", "65-69", "70-74") FROM stdin;
1992	30635	113835	164553	189833	202327	210117	211324	197648	178997	152395	123190	109580
1993	29867	111995	164162	191281	204878	212467	215298	203142	183188	155233	126013	113040
1994	32126	118066	171769	199244	215716	223260	226166	214528	193240	161869	135478	125769
1995	33148	122153	176519	206959	222529	231088	234474	225560	202482	168753	139602	128033
1996	33577	123691	179726	213414	229220	238028	241653	234960	210534	174417	143375	132084
1997	34374	125740	183663	221490	237358	246802	250062	244802	223139	182719	147057	136481
1998	35472	129480	189634	230268	247476	256897	258679	255390	234523	190182	151556	140867
1999	35532	131295	194904	238692	257135	265863	266268	264881	243548	195661	155861	144036
2000	36037	133842	200931	249204	270780	278252	278766	274451	256806	208759	162092	150997
2001	36310	136721	206482	257720	282321	290378	288917	285496	268886	218117	170621	157428
2002	37908	137897	208024	261555	288110	298891	295912	290877	275839	226131	175963	159406
2003	37655	137666	208801	265556	293588	305414	302855	295209	284551	235091	181949	163095
2004	36929	138847	211652	272178	302903	314858	314534	305506	296014	247200	190887	169167
2005	37915	143114	217588	280392	313009	327988	327396	318979	310287	263270	200175	177444
2006	40677	150815	225743	290820	326818	344469	344817	335198	326697	280917	212365	187427
2007	43421	159863	237041	303566	340698	360987	360279	350954	342513	294966	226500	197505
2008	43734	163570	244748	310530	348270	367508	364509	356059	340357	296278	225788	199222
2009	39299	155646	242670	310336	348097	365525	363876	355465	338968	292483	223383	197300
2010	37876	148888	237538	314995	361038	382846	384829	374203	357055	308516	238812	210604
2011	37559	145407	236815	316832	363602	389629	394170	381985	364475	315610	247192	213405
2012	37147	144200	237090	321051	369694	397843	404897	393506	373853	328481	257882	223398
2013	37817	143285	236101	321633	374291	404813	414167	401108	385515	336184	268346	235017
2014	37837	143794	236785	323387	379347	414390	424587	410625	393839	344137	271174	243220
2015	38261	146048	241570	326777	387602	428279	437276	427777	407257	359713	284799	256832
2016	37447	147406	242576	329326	387928	430272	446896	436784	414442	367417	293742	261633
2017	38776	150635	248963	335208	393441	437689	460746	452882	426324	383143	299575	271066
2018	39668	155989	257385	342942	399688	445774	468820	462942	434751	392520	300993	274204
2019	40692	159052	264521	351995	407719	455604	483497	481773	454335	410199	319000	289440
2020	42718	164928	277433	371206	427100	477161	509822	503186	477042	427829	332756	300925
2021	48972	180700	293241	388517	445582	493832	533498	534107	509312	453193	354615	308150
\.


--
-- Data for Name: hele_landet_loen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hele_landet_loen (year, "15-19", "20-24", "25-29", "30-34", "35-39", "40-44", "45-49", "50-54", "55-59", "60-64", "65-69", "70-74") FROM stdin;
1992	29537	97932	151801	181038	195245	204285	207125	196229	183004	147346	96659	39539
1993	28539	94340	149279	180000	195218	204385	208254	198466	184820	142937	92841	47496
1994	30011	101181	155171	186630	202595	212459	217388	209787	194261	145095	85189	38014
1995	31087	106018	160265	192710	208508	219311	224394	220675	204287	153366	92188	46816
1996	31131	108912	162897	198659	214810	226160	231016	229152	211224	157329	92493	47385
1997	31824	112617	168020	207003	222926	234200	238525	236448	219522	160860	85381	39457
1998	32512	115365	173135	215115	231400	242522	245995	243724	226763	160421	80372	41208
1999	32544	117737	179982	224941	242428	252703	255718	253243	238029	166007	82405	42148
2000	32850	119686	185419	234484	253570	262788	265948	262070	249459	180226	88886	42311
2001	33120	121190	190810	243211	265020	273974	276632	272144	260903	197600	94444	42914
2002	33235	120845	191351	247319	272432	282634	285130	280229	268806	209185	96349	43086
2003	33244	118781	188216	247810	276359	287392	291471	286105	274279	220489	102619	57121
2004	33887	120777	191119	253928	284470	297213	301285	295431	282164	233397	111290	60674
2005	35448	124909	195906	260578	292872	307582	310570	304832	290131	245189	118028	59016
2006	38024	132548	205153	269492	304101	321167	323196	317244	302348	257241	131864	64193
2007	40775	140659	216017	278894	313829	333468	335021	328162	312046	261518	144544	68421
2008	41492	145672	228646	296656	333774	355149	355824	347830	330111	281583	167039	75971
2009	37927	136612	224807	296932	334730	355703	358531	351910	335215	285917	175756	79334
2010	35637	130485	223149	303895	347184	372080	378200	370012	353760	304683	192621	86164
2011	35829	126494	222658	305849	350215	377036	385635	376289	360372	311730	197284	91673
2012	34989	123783	222059	309659	355533	383647	395476	385153	369513	323233	208816	103776
2013	35132	121858	219628	309512	357637	387561	401802	390766	375121	325187	211885	114761
2014	35356	122712	221470	312499	363247	396459	411139	401286	385500	339187	220381	123594
2015	35101	125103	225750	317408	369738	404861	421528	415776	395297	352720	231627	130668
2016	35608	128785	229598	321045	372814	409860	430187	425671	402676	357725	239000	136117
2017	36520	132130	236892	326954	378688	415796	438367	437120	411465	367068	248927	140435
2018	37992	137760	246471	336215	387513	426417	450111	449327	423608	381544	252985	143754
2019	38756	139520	250816	342454	391484	430074	456100	456085	431300	386032	253307	142199
2020	40286	144705	262452	360993	411386	453286	480369	480846	457764	405608	288289	152950
2021	44452	156731	273750	370790	421301	461532	490193	494262	470354	408151	268589	142968
\.


--
-- Data for Name: hoved_staden_ejendom; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hoved_staden_ejendom (year, famhus, somhus, ejerlejl) FROM stdin;
1992	777	327	446
1993	789	326	443
1994	876	342	482
1995	935	346	502
1996	1088	400	538
1997	1195	415	557
1998	1338	524	674
1999	1485	581	789
2000	1631	690	906
2001	1759	733	1051
2002	1863	805	1168
2003	1959	963	1250
2004	2209	1150	1416
2005	2712	1428	1772
2006	3382	1760	2256
2007	3279	1820	2035
2008	3139	1665	2051
2009	2747	1506	1781
2010	2950	1469	2022
2011	2856	1418	1999
2012	2852	1360	1976
2013	2965	1313	2166
2014	3075	1356	2236
2015	3310	1402	2351
2016	3465	1419	2511
2017	3623	1576	2813
2018	3754	1623	2958
2019	3873	1676	3066
2020	4231	1931	3351
2021	4723	2150	3664
\.


--
-- Data for Name: hoved_staden_indkomst; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hoved_staden_indkomst (year, "15-19", "20-24", "25-29", "30-34", "35-39", "40-44", "45-49", "50-54", "55-59", "60-64", "65-69", "70-74") FROM stdin;
1992	30825	110635	167049	202707	219518	228789	233700	221487	204696	176602	144497	127950
1993	30488	108212	165608	203086	222514	231155	236237	224841	207725	178734	147095	132564
1994	32488	113783	171659	206955	232676	240439	246345	235661	216753	183938	158283	146619
1995	33123	118032	175465	216862	239969	247913	253892	245913	225130	191283	161661	148715
1996	34110	120099	178455	223370	246281	256546	259636	257427	233750	197389	165084	153321
1997	34971	122121	181516	233030	255334	266364	268516	266541	246572	209402	169719	159307
1998	36209	125949	187771	241940	267546	279291	279863	277709	258395	215236	175081	164900
1999	36660	128675	193191	252412	280230	292995	289365	287893	270971	222167	180220	169170
2000	37385	131886	200769	265174	297331	309571	306060	301023	285233	238072	188716	181423
2001	37676	134913	206492	273589	308744	323487	318958	312737	297268	247956	197864	184466
2002	38942	135112	205756	276475	315961	336444	327592	317160	303729	255418	201653	184801
2003	37751	133755	204656	278671	319685	342429	335244	322999	309983	262461	207877	188487
2004	36590	134751	206555	284268	328791	349938	348310	332614	321916	275840	219721	195773
2005	37437	139131	211822	292803	340404	365095	366582	349787	337135	295514	229691	204673
2006	40392	145692	220000	303649	354414	381464	387062	368715	350929	314365	245968	216791
2007	42664	152683	232877	317346	368792	400967	403506	386615	368443	330417	260762	229478
2008	42569	156450	240748	325831	380903	411851	409550	395454	368322	323137	256462	230243
2009	37878	150910	239893	325219	379331	407697	408096	397514	370208	322110	256432	226942
2010	35972	142970	230604	326666	392379	430056	437450	426139	393201	342704	274186	244276
2011	35527	140214	229622	327278	394299	433979	445758	433452	401556	350449	284241	245612
2012	35274	139907	230573	331284	397653	442258	457762	448793	414251	367352	297449	258526
2013	36084	139709	230526	331741	400907	449506	468872	454448	433715	372064	313842	271646
2014	35609	140454	232932	333939	406837	462387	485338	467723	450160	384104	320288	284404
2015	36205	142776	242069	338599	415705	478308	504120	495144	471893	403075	334591	310376
2016	35722	144797	241833	344018	415550	482141	510402	503076	478752	413436	338717	304755
2017	36667	147231	250348	350481	419789	482679	522833	518122	485299	432803	345089	318755
2018	37023	151899	259127	360227	427613	491058	533512	532441	496344	440139	344577	322581
2019	37874	155216	268252	372667	438513	500657	549504	560109	521915	465065	365281	339448
2020	38898	159304	281087	394170	460539	524352	578214	575221	546428	482637	378083	348283
2021	45243	174752	297964	415437	485441	544702	611592	623022	589878	519735	406706	363020
\.


--
-- Data for Name: hoved_staden_loen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hoved_staden_loen (year, "15-19", "20-24", "25-29", "30-34", "35-39", "40-44", "45-49", "50-54", "55-59", "60-64", "65-69", "70-74") FROM stdin;
1992	29739	95846	158093	198294	216329	227541	231267	221786	209213	180213	130758	58341
1993	28975	92111	155149	197095	217721	227843	233242	224056	210964	174581	127091	67524
1994	29994	96635	158145	202067	225404	235372	242244	235578	221087	180315	112983	45802
1995	31020	101234	161471	207437	231172	242721	249184	247128	231871	190797	130846	65168
1996	31313	104161	163998	213683	238430	251309	256595	257074	239286	196233	131856	65900
1997	32019	107527	167492	221589	246514	260417	264239	263769	248095	200859	121484	54341
1998	32844	110634	172962	231261	256798	271682	273394	272153	256935	203323	118062	57478
1999	33423	113794	180155	243072	270015	284484	284601	283525	269798	210665	121224	59382
2000	33805	116082	186265	254619	283735	297403	297721	294033	281104	221824	128597	58890
2001	34223	117775	192250	264122	297435	311141	311551	305310	293825	237867	135199	58746
2002	33987	116476	190878	267102	305076	320991	321856	312889	301136	248905	138752	59788
2003	33295	113211	186100	265944	308028	324939	328862	319423	306682	258993	146352	79190
2004	33796	114456	187630	271734	316665	335727	341966	328725	314504	271610	156659	85606
2005	35260	118630	191138	278839	325881	348272	352858	341115	323050	283573	160429	79329
2006	37624	124584	200716	287394	337185	363822	367028	354889	334724	294183	175742	86468
2007	40329	131211	212789	297522	346933	378012	380442	368016	345236	301394	190517	96563
2008	40515	135776	224785	315012	369082	402037	404424	391074	363255	322290	215380	105773
2009	36912	129663	223000	316610	370064	402454	407858	398697	371238	326521	223687	111865
2010	34075	123154	220877	324074	386848	425330	435553	427106	398401	350840	249891	125043
2011	34218	118734	219171	325207	387563	429441	444668	433280	408803	359323	255453	131368
2012	33806	116406	218674	329567	391845	435518	455180	443948	420563	374149	267917	148168
2013	34007	114787	216581	329580	394151	440996	464417	452363	431768	378736	272560	160052
2014	33771	115342	218660	331714	398427	448818	474655	464679	448152	394313	284570	175045
2015	33363	118024	223920	337941	405245	457668	487151	485286	458649	408794	297174	177795
2016	33622	122115	229593	343390	408780	461957	496594	496326	467570	416511	306542	184588
2017	34402	124958	239035	350663	415197	467295	504435	508519	476825	426501	322104	185337
2018	35207	129521	249817	361706	425884	478938	517484	521183	489574	440839	323726	192226
2019	35732	131024	255449	370997	431872	483613	525040	532430	500318	446938	323547	190028
2020	36896	134953	267752	392362	455527	510123	552108	557776	530823	468494	358882	204369
2021	40374	146880	279278	403942	468418	519561	563964	576239	546599	472800	334965	188047
\.


--
-- PostgreSQL database dump complete
--

