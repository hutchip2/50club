
class Accounts::RegistrationsController < Devise::RegistrationsController

  def update_ohio_community_select
    render :partial => "ohio_community_select"
  end

  def update_kentucky_community_select
    render :partial => "kentucky_community_select"
  end

  def update_indiana_community_select
    render :partial => "indiana_community_select"
  end

  def update_state_select
    @subregions = Carmen::Country.named(params[:country]).subregions.collect{|sub| sub.name }
    render :partial => "subregion_select"
  end

  def new
    @ohio_communities = [
      'Addyston',
      'Amberley',
      'Anderson Township',
      'Avondale',
      'The Banks',
      'Blue Ash',
      'Bond Hill',
      'California',
      'Camp Washington',
      'Carthage',
      'Cheviot',
      'Cleves',
      'Clifton',
      'Colerain Township',
      'CUF',
      'Clifton Heights',
      'College Hill',
      'Columbia-Tusculum',
      'Corryville',
      'Delhi',
      'Deer Park',
      'Downtown Cincinnati',
      'East End',
      'East Price Hill',
      'East Walnut Hills',
      'East Westwood',
      'Elmwood Place',
      'English Woods',
      'Evanston',
      'Fairfield',
      'Fairview',
      'Fay Apartments',
      'Forest Park',
      'Golf Manor',
      'Green Township',
      'Harrison',
      'Hartwell',
      'Hyde Park',
      'Indian Hill',
      'Kennedy Heights',
      'Lebanon',
      'Lincoln Heights',
      'Linwood',
      'Loveland',
      'Lower Price Hill',
      'Madeira',
      'Madisonville',
      'Mariemont',
      'Mason',
      'Miami Township',
      'Millvale',
      'Montgomery',
      'Mount Adams',
      'Mount Airy',
      'Mount Auburn',
      'Prospect Hill',
      'Mount Lookout',
      'Mount Washington',
      'North Avondale',
      'North Bend',
      'North College Hill',
      'North Fairmount',
      'Northside (formerly Cumminsville)',
      'Norwood',
      'Oakley',
      'Over-the-Rhine',
      'Paddock Hills',
      'Pendleton',
      'Pleasant Ridge',
      'Queensgate',
      'Reading',
      'Riverside',
      'Roselawn',
      'Sayler Park',
      'Sedamsville',
      'Sharonville',
      'Silverton',
      'South Cumminsville',
      'South Fairmount',
      'Spring Grove Village (formerly Winton Place)',
      'Springdale',
      'St. Bernard',
      'Symmes Township',
      'Union Township',
      'University Heights',
      'Walnut Hills',
      'West End',
      'West Chester',
      'West Price Hill',
      'Westwood',
      'Winton Terrace',
      'Wyoming',
    ]
    
    @kentucky_communities = [
          'Alexandria',
          'Bellevue',
          'Bromley',
          'Burlington',
          'Cold Spring',
          'Covington',
          'Crescent Springs',
          'Crestview Hills',
          'Dayton',
          'Edgewood',
          'Elsmere',
          'Erlanger',
          'Fort Mitchell',
          'Fort Thomas',
          'Fort Wright',
          'Florence',
          'Hebron',
          'Highland Heights',
          'Independence',
          'Lakeside Park',
          'Ludlow',
          'Melbourne',
          'Newport',
          'Park Hills',
          'Southgate',
          'Taylor Mill',
          'Union',
          'Verona',
          'Villa Hills',
          'Walton',
          'Wilder'
        ]
        @indiana_communities = [
          'Aurora',
          'Greendale',
          'Lawrenceburg'
        ]

    if (params[:country])
      @subregions = Carmen::Country.coded(params[:country]).subregions.collect{|sub| sub.name }
    else
      @subregions = ['']
    end
    super
  end

  def edit
    @ohio_communities = [
      'Addyston',
      'Amberley',
      'Anderson Township',
      'Avondale',
      'The Banks',
      'Blue Ash',
      'Bond Hill',
      'California',
      'Camp Washington',
      'Carthage',
      'Cheviot',
      'Cleves',
      'Clifton',
      'Colerain Township',
      'CUF',
      'Clifton Heights',
      'College Hill',
      'Columbia-Tusculum',
      'Corryville',
      'Delhi',
      'Deer Park',
      'Downtown Cincinnati',
      'East End',
      'East Price Hill',
      'East Walnut Hills',
      'East Westwood',
      'Elmwood Place',
      'English Woods',
      'Evanston',
      'Fairfield',
      'Fairview',
      'Fay Apartments',
      'Forest Park',
      'Golf Manor',
      'Green Township',
      'Harrison',
      'Hartwell',
      'Hyde Park',
      'Indian Hill',
      'Kennedy Heights',
      'Lebanon',
      'Lincoln Heights',
      'Linwood',
      'Loveland',
      'Lower Price Hill',
      'Madeira',
      'Madisonville',
      'Mariemont',
      'Mason',
      'Miami Township',
      'Millvale',
      'Montgomery',
      'Mount Adams',
      'Mount Airy',
      'Mount Auburn',
      'Prospect Hill',
      'Mount Lookout',
      'Mount Washington',
      'North Avondale',
      'North Bend',
      'North College Hill',
      'North Fairmount',
      'Northside (formerly Cumminsville)',
      'Norwood',
      'Oakley',
      'Over-the-Rhine',
      'Paddock Hills',
      'Pendleton',
      'Pleasant Ridge',
      'Queensgate',
      'Reading',
      'Riverside',
      'Roselawn',
      'Sayler Park',
      'Sedamsville',
      'Sharonville',
      'Silverton',
      'South Cumminsville',
      'South Fairmount',
      'Spring Grove Village (formerly Winton Place)',
      'Springdale',
      'St. Bernard',
      'Symmes Township',
      'Union Township',
      'University Heights',
      'Walnut Hills',
      'West End',
      'West Chester',
      'West Price Hill',
      'Westwood',
      'Winton Terrace',
      'Wyoming',
    ]
    
    @kentucky_communities = [
          'Alexandria',
          'Bellevue',
          'Bromley',
          'Burlington',
          'Cold Spring',
          'Covington',
          'Crescent Springs',
          'Crestview Hills',
          'Dayton',
          'Edgewood',
          'Elsmere',
          'Erlanger',
          'Fort Mitchell',
          'Fort Thomas',
          'Fort Wright',
          'Florence',
          'Hebron',
          'Highland Heights',
          'Independence',
          'Lakeside Park',
          'Ludlow',
          'Melbourne',
          'Newport',
          'Park Hills',
          'Southgate',
          'Taylor Mill',
          'Union',
          'Verona',
          'Villa Hills',
          'Walton',
          'Wilder'
        ]
        @indiana_communities = [
          'Aurora',
          'Greendale',
          'Lawrenceburg'
        ]

    if (params[:country])
      @subregions = Carmen::Country.coded(params[:country]).subregions.collect{|sub| sub.name }
    else
      @subregions = ['']
    end
    super
  end

  def create
    super
  end

  def update
    super
  end

end