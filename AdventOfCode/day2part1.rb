input =
"515	912	619	2043	96	93	2242	1385	2110	860	2255	621	1480	118	1230	99
161	6142	142	1742	237	6969	211	4314	5410	4413	3216	6330	261	3929	5552	109
1956	4470	3577	619	105	3996	128	1666	720	4052	108	132	2652	306	1892	1869
2163	99	2257	895	112	1771	1366	1631	2064	2146	103	865	123	1907	2362	876
1955	3260	1539	764	185	5493	5365	5483	4973	175	207	1538	4824	205	1784	2503
181	3328	2274	3798	1289	2772	4037	851	1722	3792	175	603	725	158	2937	174
405	247	2083	956	725	258	2044	206	2054	561	2223	2003	2500	355	306	2248
837	937	225	1115	446	451	160	1219	56	61	62	922	58	1228	1217	1302
1371	1062	2267	111	135	2113	1503	2130	1995	2191	129	2494	2220	739	138	1907
3892	148	2944	371	135	1525	3201	3506	3930	3207	115	3700	2791	597	3314	132
259	162	186	281	210	180	184	93	135	208	88	178	96	25	103	161
1080	247	1036	936	108	971	908	1035	123	974	103	1064	129	1189	1089	938
148	1874	122	702	922	2271	123	111	454	1872	2142	2378	126	813	1865	1506
842	267	230	1665	2274	236	262	1714	3281	4804	4404	3833	661	4248	3893	1105
1112	1260	809	72	1104	156	104	1253	793	462	608	84	99	1174	449	929
707	668	1778	1687	2073	1892	62	1139	908	78	1885	800	945	712	57	65"

#storing each line in an array
array = input.split("\n")

#splitting each item in the array into it's own array
# so now we have an array of arrays that contain the inidivual numbers in each line
nested_arrays = array.map { |line| line.split(" ") }

# This is taking each line of the array and sorting the numbers in the Jacqueline
# You can't simply use .sort on the array because they would be sorted using the first digit only
# They need to be treated as integers and then sorted.
sorted_nested_arrays = nested_arrays.map { |line| line.sort_by(&:to_i) }

checksum_array = []

sorted_nested_arrays.each do |line|
  lowest_number = line[0].to_i
  highest_number = line[-1].to_i
  checksum_array << (highest_number - lowest_number)
end

# if we were using rails we could have simply used array.sum
# but using enumerable inject is the basic way to sum an array of numbers
output = checksum_array.inject(0){|sum,x| sum + x }
puts output
